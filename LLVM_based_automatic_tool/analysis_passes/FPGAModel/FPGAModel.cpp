#define APP "RSCD"
//#define MB 64

#include <iostream>
#include <sstream>
#include <fstream>
#include <string>
#include <queue>
#include <map>

#include "llvm/Analysis/LoopInfo.h"
#include "llvm/Pass.h"
#include "llvm/IR/User.h"
#include "llvm/IR/Constants.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/Instruction.h"
#include "llvm/IR/Instructions.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Support/FormatVariadic.h"
#include "llvm/Analysis/CFG.h"

using namespace llvm;

namespace {

  struct FPGAModel : public FunctionPass {
    static char ID;
    FPGAModel() : FunctionPass(ID) {}   

    float mb       = 64;  // memory bandwidth: 64 bytes
    float cpt_seq  = 1.0; // cycles per sequential memory transaction
    float cpt_rand = 2.0; // cycles per random memory transaction

    int num_of_loops;
    int loops_ii_input[10];
    int loops_ul_input[10];
    int loops_ltc_input[10];

    std::map<Loop*, int> loops_ii, loops_ul, loops_ltc;
    std::map<Loop*, int> loops_compute_cycles;
    std::map<Loop*, float> loops_memory_cycles;

    Instruction *bb_loop_phi;

    // whether ii of each loop is 1
    bool test_ii(LoopInfo *LI) {

      for(int i = 0; i < num_of_loops; i++) {
        if(loops_ii_input[i] != 1)
          return false;
      }
      return true;
    }

    bool test_bb_is_loop_coalesced(BasicBlock *bb) {

      // judge whether bb is a loop...
      Instruction *last_inst = bb->getTerminator();
      if(BranchInst *br_inst = dyn_cast<BranchInst>(last_inst)) {
        // should be a conditional branch
        if(br_inst->isConditional()) {
          BasicBlock *succ_bb0 = br_inst->getSuccessor(0);  // two successors
          BasicBlock *succ_bb1 = br_inst->getSuccessor(1);
          
          // loop: one of the successors should be the current bb
          if(succ_bb0 == bb || succ_bb1 == bb) {
            // go to the cmp inst
            CmpInst *cmp_inst = dyn_cast<CmpInst>(br_inst->getCondition());            
            // one of cmp operands is increasing with 1...and the other is a constant
            Value *cmp_op0 = cmp_inst->getOperand(0);
            Value *cmp_op1 = cmp_inst->getOperand(1);
            Instruction *inst_op0 = dyn_cast<Instruction>(cmp_op0);
            Instruction *inst_op1 = dyn_cast<Instruction>(cmp_op1);
            ConstantInt *cons_op0 = dyn_cast<ConstantInt>(cmp_op0);
            ConstantInt *cons_op1 = dyn_cast<ConstantInt>(cmp_op1);

            Instruction *inc_inst;
            if((inst_op0 != NULL) && (cons_op1 != NULL)) 
              inc_inst = inst_op0;
            else if((inst_op1 != NULL) && (cons_op0 != NULL)) 
              inc_inst = inst_op1;
            else
              return false;

            // focus on the increasing inst: should be phi inst + constant 1
            if(inc_inst->getOpcode() == Instruction::Add || inc_inst->getOpcode() == Instruction::Sub) {
              Value *op0 = inc_inst->getOperand(0);
              Value *op1 = inc_inst->getOperand(1);
              Instruction *inst_op0 = dyn_cast<Instruction>(op0);
              Instruction *inst_op1 = dyn_cast<Instruction>(op1);
              ConstantInt *cons_op0 = dyn_cast<ConstantInt>(op0);
              ConstantInt *cons_op1 = dyn_cast<ConstantInt>(op1);

              Instruction *phi_inst;
              int inc_value;
              if((inst_op0 != NULL) && (cons_op1 != NULL)) {
                phi_inst  = inst_op0;
                inc_value = cons_op1->getSExtValue();
              }
              else if((inst_op1 != NULL) && (cons_op0 != NULL)) {
                phi_inst  = inst_op1;
                inc_value = cons_op0->getSExtValue();
              }
              else
                return false;

              // test the phi_inst and inc_value
              if(phi_inst->getOpcode() == Instruction::PHI && phi_inst->getParent() == bb && inc_value == 1) {
                //errs() << "phi: " << *phi_inst << '\n';
                bb_loop_phi = phi_inst;
                return true;
              }
            }
          }
        }
      }
      return false;
    }

    bool test_inst_is_sequential(Instruction *inst, Instruction *phi_inst) {

      // should be a gep inst
      if(inst->getOpcode() == Instruction::GetElementPtr) {
        // get the last opearnd: offset
        Value *index = inst->getOperand(inst->getNumOperands() - 1);
        if(Instruction *index_inst = dyn_cast<Instruction>(index)) {
          //errs() << "op1: " << *index_inst << '\n';
          if(index_inst == phi_inst)
            return true;
          else if(index_inst->getOpcode() == Instruction::Add || index_inst->getOpcode() == Instruction::Sub) {
            Value *op0 = index_inst->getOperand(0);
            Value *op1 = index_inst->getOperand(1);
            if(Instruction *op_inst0 = dyn_cast<Instruction>(op0)) {
              if(op_inst0 == phi_inst)
                return true;
            }
            if(Instruction *op_inst1 = dyn_cast<Instruction>(op1)) {
              if(op_inst1 == phi_inst)
                return true;
            }
          }
        }
      }
      return false;
    }

    void set_loop_ii_ul_ltc(LoopInfo *LI) {

      std::queue<Loop*> loop_queue;  // use queue to implement BFS
      int global_loop_index = 0;

      // search the outermost level loop for the using the way BFS. 
	    // enqueue their child loop into loop_queue.
      for (LoopInfo::iterator i = LI->begin(), e = LI->end(); i != e; ++i) {
        Loop *L = *i;
        // log the II, #UL and LTC for each loop...
        loops_ii[L]  = loops_ii_input[global_loop_index];
        loops_ul[L]  = loops_ul_input[global_loop_index];
        loops_ltc[L] = loops_ltc_input[global_loop_index++];
        loops_compute_cycles[L] = 0;
        loops_memory_cycles[L]  = 0;

        // push the child loop to the loop_queue
        std::vector<Loop*> subLoops = L->getSubLoops();
        for(unsigned j = 0; j < subLoops.size(); j++) {
          Loop *sub_loop = subLoops.at(j);
          loop_queue.push(sub_loop);
        }
      }

      // work on the queue until it is empty...
      while(!loop_queue.empty()) {
        // pop the front loop in the loop_queue...
        Loop *loop_test = loop_queue.front();
        loop_queue.pop();

        // log the II, #UL and LTC for each loop...
        loops_ii[loop_test]  = loops_ii_input[global_loop_index];
        loops_ul[loop_test]  = loops_ul_input[global_loop_index];
        loops_ltc[loop_test] = loops_ltc_input[global_loop_index++];
        loops_compute_cycles[loop_test] = 0;
        loops_memory_cycles[loop_test] = 0;

        // push the child loop to the loop_queue
        std::vector<Loop*> subLoops = loop_test->getSubLoops();
        for(unsigned j = 0; j < subLoops.size(); j++) {
          Loop *sub_loop = subLoops.at(j);
          loop_queue.push(sub_loop);
        }
      }
    }

    int compute_child_loops_Ccomp(std::vector<Loop*> child_loops) {

      int Ccomp = 0;

      // do for each of the child loops
      for(unsigned i = 0; i < child_loops.size(); i++) {
        Loop *test_loop = child_loops.at(i);
        std::vector<Loop*> subLoops = test_loop->getSubLoops();
        // test_loop has no sub loop
        if(subLoops.size() == 0) {
          // equation 3 in the paper...
          loops_compute_cycles[test_loop] = loops_ltc[test_loop] / loops_ul[test_loop] * loops_ii[test_loop];
          Ccomp += loops_compute_cycles[test_loop];
        }
        // test_loop has sub loops     
        else {
          // compute Ccomp of its sub loops, multipled by its trip count
          loops_compute_cycles[test_loop] = compute_child_loops_Ccomp(subLoops) * loops_ltc[test_loop];
          Ccomp += loops_compute_cycles[test_loop];
        }
      }
      return Ccomp;
    }

    float compute_child_loops_Cmem(std::vector<Loop*> child_loops) {

      float Cmem = 0;

      // do for each of the child loops
      for(unsigned i = 0; i < child_loops.size(); i++) {
        Loop *test_loop = child_loops.at(i);
        std::vector<Loop*> subLoops = test_loop->getSubLoops();
        // test_loop has no sub loop
        if(subLoops.size() == 0) {
          // computation of Cmem starts from the innermost loop
          Cmem += loops_memory_cycles[test_loop];
        }
        // test_loop has sub loops     
        else {
          // compute Cmem of its sub loops, multipled by its trip count
          loops_memory_cycles[test_loop] = compute_child_loops_Cmem(subLoops) * loops_ltc[test_loop];
          Cmem += loops_memory_cycles[test_loop];
        }
      }
      return Cmem;
    }
    
    void getAnalysisUsage(AnalysisUsage &AU) const override {
      AU.setPreservesCFG();
      AU.addRequired<LoopInfoWrapperPass>();
    }
    
    bool runOnFunction(Function &F) override {
     
      if(F.getCallingConv() == 76) {        

        // we need num of loops, each ii, #ul and ltc from II_UL_LTC.in
        std::string app = APP;
        std::string file = "/root/Work/llvm/apps/" + app + "/II_UL_LTC.in";
        std::ifstream fin(file);
        char line[20];
        fin.getline(line, sizeof(line));
        std::stringstream ss(line);
        ss >> num_of_loops;
        int i = 0;
        while(i < num_of_loops) { // for each loop
          fin.getline(line, sizeof(line));
          std::stringstream ssl(line);
          ssl >> loops_ii_input[i];
          ssl >> loops_ul_input[i];
          ssl >> loops_ltc_input[i];
          i++;
        }

        LoopInfo &LI = getAnalysis<LoopInfoWrapperPass>().getLoopInfo();
        LoopInfo *LI_pointer;
        LI_pointer = &LI;

        // set the II, #UL, LTC for each loop...
        set_loop_ii_ul_ltc(LI_pointer);
        
        bool ii_flag = test_ii(LI_pointer);
        if(ii_flag) {        
          errs() << "\t\tSWI\n";  //errs() << "ii = 1\n";
          return false;
        }
/*
        int loopCounter = 0;       
        for (LoopInfo::iterator i = LI.begin(), e = LI.end(); i != e; ++i) 		    
        {
          Loop *L = *i;
          loopCounter++;

          std::vector<Loop*> subLoops = L->getSubLoops();			      
          errs() << "Loop:";
          errs() << loopCounter;
          errs() << ": inner loop number = ";
          errs() << subLoops.size();
          errs() << "\n";
          errs() << "II: " << loops_ii[L] << "; ";
          errs() << "#UL: " << loops_ul[L] << "; ";
          errs() << "LTC: " << loops_ltc[L] << "\n";
        }	
*/
        
        for(Function::arg_iterator a = F.arg_begin(), e = F.arg_end(); a!=e; a++) {
          if(a->getType()->isPointerTy()) {
            //errs() << a->getName() << ", " << *a->getType() << '\n';
            std::string sa = formatv("{0}", *a).str();
            
            for(Function::iterator bb = F.begin(), e = F.end(); bb!=e; bb++) {
              for(BasicBlock::iterator i = bb->begin(), i2 = bb->end(); i!=i2; i++) {
                Instruction *inst = dyn_cast<Instruction>(i);
                
                // find all related insts
                std::string si = formatv("{0}",*i).str();
                if(si.find(sa) != std::string::npos) {
                  //errs() << "inst: " << *i << '\n';
                  BasicBlock *ibb = inst->getParent();
                  if(test_bb_is_loop_coalesced(ibb)) {
                    float mt_tmp;

                    // get the loop
                    Loop *L = LI.getLoopFor(ibb);
                    
                    // sequential memory access
                    if(test_inst_is_sequential(inst,bb_loop_phi)) {
                      int bs = a->getType()->getPointerElementType()->getPrimitiveSizeInBits() / 8;
                      // equation 5, 6 in the paper...
                      mt_tmp = bs * loops_ltc[L] / mb;
                    }
                    // random memory access
                    else{
                      // equation 5, 7 in the paper...
                      mt_tmp = 1 * loops_ltc[L];
                      loops_memory_cycles[L] += mt_tmp * cpt_rand;
                    }
                  }
                }
              }
            }
          }        
        }
        
        int Ccomp  = 0;
        float Cmem = 0;
        for (LoopInfo::iterator i = LI.begin(), e = LI.end(); i != e; ++i) {
          Loop *L = *i;
          std::vector<Loop*> subLoops = L->getSubLoops();
          // loop L has no sub loop
          if(subLoops.size() == 0) {
            // equation 3 in the paper...
            loops_compute_cycles[L] = loops_ltc[L] / loops_ul[L] * loops_ii[L];
            Ccomp += loops_compute_cycles[L];
            // computation of Cmem starts from the innermost loop
            Cmem  += loops_memory_cycles[L];
          }
          // loop L has sub loops     
          else {
            // compute Ccomp of its sub loops, multipled by its trip count
            loops_compute_cycles[L] = compute_child_loops_Ccomp(subLoops) * loops_ltc[L];
            Ccomp += loops_compute_cycles[L];
            // compute Cmem of its sub loops, multipled by its trip count
            loops_memory_cycles[L] = compute_child_loops_Cmem(subLoops) * loops_ltc[L];
            Cmem += loops_memory_cycles[L];
          }
        } 

        //errs() << "Ccomp: " << Ccomp << '\n';
        //errs() << "Cmem: " << Cmem << '\n';
        // compute-bound
        if(Ccomp >= Cmem) {
          errs() << "\t\tSWI+C\n";
        }
        else {
          errs() << "\t\tSWI\n";
        }
      }
      return false;
    }
  };
}  // end of anonymous namespace

char FPGAModel::ID = 0;
static RegisterPass<FPGAModel> X("fpgamodel", "direct prediction + potential evolution of swi",
                             false /* Only looks at CFG */,
                             false /* Analysis Pass */);
