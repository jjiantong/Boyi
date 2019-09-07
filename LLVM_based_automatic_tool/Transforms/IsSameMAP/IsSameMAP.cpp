#define APP "PS"

#include <iostream>
#include <sstream>
#include <fstream>
#include <string>

#include "llvm/Pass.h"
#include "llvm/IR/User.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/Instruction.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/DerivedTypes.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Support/FormatVariadic.h"

using namespace llvm;

namespace {

  struct IsSameMAP : public ModulePass {
    static char ID;
    IsSameMAP() : ModulePass(ID) {}

    struct AccessP {
      Instruction *index; // index of related gep inst
      int flag;           // case 0: no; case 1: if branches; case 2: for loops 
      Instruction *cmp;   // the condition of case 1 
      Instruction *bound; // the bound of case 2
    };

    struct MAP {
      bool isSameMAP;   // is the same MAP or not
      int kernel1;      // producer kernel id
      int arg1;         // producer arg id
      int kernel2;      // consumer kernel id
      int arg2;         // consumer arg id
      int icnt1;        // number of write inst in producer kernel
      int icnt2;        // number of read inst in consumer kernel
      AccessP ap1[16];  // access pattern in producer kernel
      AccessP ap2[16];  // access pattern in consumer kernel
    };

    // match for producer kernel
    int matchOut(int cand[][4], int k, int a, int ccnt) { // upper kernel

      for(int i = 0; i < ccnt; i++) {
        if(cand[i][0] == k && cand[i][1] == a) {
          return i;
        }
      }
      return -1;
    }

    // match for consumer kernel
    int matchIn(int cand[][4], int k, int a, int ccnt) {  // lower kernel
      
      for(int i = 0; i < ccnt; i++) {
        if(cand[i][2] == k && cand[i][3] == a) {
          return i;
        }
      }
      return -1;
    }

    bool isLoop(MAP kkc[], BasicBlock *bb, int pos, int icnt, bool isProducer) {

      bool ret = false;
      if(Instruction *last_inst = bb->getTerminator()) {
        if(BranchInst *br_inst = dyn_cast<BranchInst>(last_inst)) {
          // should be a conditional branch
          if(br_inst->isConditional()) {
            BasicBlock *dest0 = br_inst->getSuccessor(0); // two successors
            BasicBlock *dest1 = br_inst->getSuccessor(1);
            // one of the successors should be the current bb
            if((dest0 == bb)||(dest1 == bb)) {
              Value *v = br_inst->getOperand(0);
              Instruction *cmpi = dyn_cast<Instruction>(v); //errs() << "cmp: " << *cmpi << '\n';
              if(isProducer)  kkc[pos].ap1[icnt].bound = cmpi;
              else            kkc[pos].ap2[icnt].bound = cmpi;
              ret = true;
            }
          }
        }
      }
      return ret;
    }

    bool isBr(MAP kkc[], BasicBlock *bb, int pos, int icnt, bool isProducer) {

      bool ret = false;
      // should have only one predeccessor
      if(bb->hasNPredecessors(1)) {
        BasicBlock *prebb = bb->getUniquePredecessor();
        if(Instruction *last_inst = prebb->getTerminator()) {
          if(BranchInst *br_inst = dyn_cast<BranchInst>(last_inst)) {
            // terminator of predeccessor should be a conditional branch
            if(br_inst->isConditional()) {
              Value *v = br_inst->getOperand(0);
              Instruction *cmpi = dyn_cast<Instruction>(v); //errs() << "cmp: " << *cmpi << '\n';             
              if(isProducer)  kkc[pos].ap1[icnt].cmp = cmpi;
              else            kkc[pos].ap2[icnt].cmp = cmpi;
              ret = true;
            }
          }
        }
      }
      return ret;
    }

    void findAP1(MAP kkc[], int pos, GetElementPtrInst *inst) {

      kkc[pos].icnt1++;  // number of instructions  //errs() << "inst: " << *inst << '\n';           
      Instruction *idx = dyn_cast<Instruction>(inst->getOperand(1));  //errs() << "index: " << *idx << '\n';
      kkc[pos].ap1[kkc[pos].icnt1].index = idx; // store the instruction about index      
      // judge for case 123
      BasicBlock *bb = inst->getParent(); 
      if(isLoop(kkc, bb, pos, kkc[pos].icnt1, true))    kkc[pos].ap1[kkc[pos].icnt1].flag = 2;
      else if(isBr(kkc, bb, pos, kkc[pos].icnt1, true)) kkc[pos].ap1[kkc[pos].icnt1].flag = 1;
      else                                              kkc[pos].ap1[kkc[pos].icnt1].flag = 0;
    }

    void findAP2(MAP kkc[], int pos, GetElementPtrInst *inst) {

      kkc[pos].icnt2++;  // number of instructions  //errs() << "inst: " << *inst << '\n';       
      Instruction *idx = dyn_cast<Instruction>(inst->getOperand(1));  //errs() << "index: " << *idx << '\n';  
      kkc[pos].ap2[kkc[pos].icnt2].index = idx; // store the instruction about index     
      // judege for case 123
      BasicBlock *bb = inst->getParent(); 
      if(isLoop(kkc, bb, pos, kkc[pos].icnt2, false))     kkc[pos].ap2[kkc[pos].icnt2].flag = 2;
      else if(isBr(kkc, bb, pos, kkc[pos].icnt2, false))  kkc[pos].ap2[kkc[pos].icnt2].flag = 1;
      else                                                kkc[pos].ap2[kkc[pos].icnt2].flag = 0;
    }

    bool sameValues(Instruction *i1, Instruction *i2) {

      // should be the same operation
      if(i1->isSameOperationAs(i2, 0)) {
        // if is a call inst
        if(i1->getOpcode() == Instruction::Call) {
          //errs() << "find:" << *i1 << "!!!AND!!!" << *i2 << '\n';
          CallInst *cinst1 = dyn_cast<CallInst>(i1);
          CallInst *cinst2 = dyn_cast<CallInst>(i2); 
          StringRef func1  = cinst1->getCalledFunction()->getName();
          StringRef func2  = cinst2->getCalledFunction()->getName();
          Value *para1     = cinst1->getArgOperand(0);
          Value *para2     = cinst2->getArgOperand(0);
          if(func1 == func2) {  // e.g., get_local_id
            if(para1 == para2)  return true;  // e.g., 0, 1, or 2
            else                return false;
          }
          else {
            return false;
          }
        }
        // if is not a call inst
        else {
          //errs() << "find:" << *i1 << "!!!AND!!!" << *i2 << '\n';
          int ocnt = i1->getNumOperands();
          Value **v1 = new Value*[ocnt];
          Value **v2 = new Value*[ocnt];
          bool *isSame = new bool[ocnt];
          for(int i = 0; i < ocnt; i++) {
            v1[i] = i1->getOperand(i);
            v2[i] = i2->getOperand(i);
            // if both operands are constants
            if(isa<Constant>(v1[i]) && isa<Constant>(v2[i])) {
              //errs() << "both " << *v1[i] << " and " << *v2[i] << " are constants\n";
              ConstantInt *c1 = dyn_cast<ConstantInt>(v1[i]);
              ConstantInt *c2 = dyn_cast<ConstantInt>(v2[i]);
              if(c1->getSExtValue() == c2->getSExtValue()) {
                isSame[i] = true; //errs() << "and they are equal\n";
              } 
              else {               
                isSame[i] = false;  //errs() <<"but they are not equal\n";
              }
            }
            // if neighter operands are constants
            else if((!isa<Constant>(v1[i])) && (!isa<Constant>(v2[i]))) {
              Instruction *inst1 = dyn_cast<Instruction>(v1[i]);
              Instruction *inst2 = dyn_cast<Instruction>(v2[i]);
              if(inst1 && inst2) {
                isSame[i] = sameValues(inst1, inst2);
              }
              else {
                //!!!!!!!!!
                //errs() << "they are not instruction: " << *v1[i] << "!!!AND!!!" << *v2[i] << '\n';               
                std::string sv1 = formatv("{0}", *v1[i]).str(); 
                std::string sv2 = formatv("{0}", *v2[i]).str();  
                if(sv1 == sv2) {
                  // !!!!!!!!!!!!!!
                  // should: determine its num in arg list, and go back to host to further judge                 
                  isSame[i] = true; //errs() << "and they are the same\n";
                } 
                else {                  
                  isSame[i] = false;  //errs() <<"but they are not equal\n";
                }
              }
            }
            else {
              isSame[i] = false;
            }
          }
          bool ret = isSame[0];
          for(int i = 1; i < ocnt; i++) {
            ret = ret && isSame[i];
          }
          return ret;
        }
      }
      else {  // not the same operation
        return false;
      }
    }

    bool runOnModule(Module &M) override {

      // we need ccnt and cand[..][4] from IsRdWr.out
      // ccnt: number of the pairs of candidates (same buffer, output->input)
      // cand[..][4]: pairs of candidates
      int cand[10][4];
      std::string app = APP;
      std::string file = "/root/Work/llvm/apps/" + app + "/IsRdWr.out";
      std::ifstream fin(file);
      char line[20];
      int ccnt = 0;
      while(fin.getline(line, sizeof(line))) {
        std::stringstream ss(line);
        ss >> cand[ccnt][0];
        ss >> cand[ccnt][1];
        ss >> cand[ccnt][2];
        ss >> cand[ccnt][3];
        ccnt++;
      }

      // initialize kkc struct
      MAP kkc[10];
      for(int i = 0; i < ccnt; i++) {
        kkc[i].kernel1 = cand[i][0]; 
        kkc[i].arg1    = cand[i][1];
        kkc[i].kernel2 = cand[i][2];
        kkc[i].arg2    = cand[i][3];
        kkc[i].icnt1   = -1;
        kkc[i].icnt2   = -1;
      }
      
      int kcnt  = -1;
      for(Module::iterator f = M.begin(), f2 = M.end(); f!=f2; f++) { // all functions
        if(f->getCallingConv() == 76) { // __kernel: 76
          kcnt++; // kernel id   
          int acnt = -1;
          // for all args of the function
          for(Function::arg_iterator a = f->arg_begin(), e = f->arg_end(); a != e; a++) {
            acnt++; // arg id
            int pos1 = matchOut(cand, kcnt, acnt, ccnt);  // for the producer kernel
            int pos2 = matchIn(cand, kcnt, acnt, ccnt);   // for the consumer kernel
            std::string sa = formatv("{0}", *a).str();
            
            // if (kcnt, acnt) is in cand: find its position
            if(pos1 != -1) {
              //errs() << "producer: " << *a << '\n';              
              for(Function::iterator bb = f->begin(), e = f->end(); bb!=e; bb++) {  // all basic blocks
                for(BasicBlock::iterator i = bb->begin(), i2 = bb->end(); i!=i2; i++) { // all instructions
                  std::string si = formatv("{0}",*i).str();
                  // find all related instructions: gep instructions                 
                  if(si.find(sa) != std::string::npos) {
                    if(GetElementPtrInst *gep = dyn_cast<GetElementPtrInst>(i)) {
                      findAP1(kkc, pos1, gep);
                    }            
                  }
                }
              }
              kkc[pos1].icnt1++;             
            }
            // if (kcnt, acnt) is in cand: find its position          
            else if(pos2 != -1) {
              //errs() << "consumer: " << *a << '\n';
              for(Function::iterator bb = f->begin(), e = f->end(); bb!=e; bb++) {  // all basic blocks
                for(BasicBlock::iterator i = bb->begin(), i2 = bb->end(); i!=i2; i++) { // all instructions
                  std::string si = formatv("{0}",*i).str();
                  // find all related instructions: gep instructions
                  if(si.find(sa) != std::string::npos) {
                    if(GetElementPtrInst *gep = dyn_cast<GetElementPtrInst>(i)) {
                      findAP2(kkc, pos2, gep);
                    }                   
                  }
                }
              }
              kkc[pos2].icnt2++;             
            }           
          }       
        }       
      }

      for(int pos = 0; pos < ccnt; pos++) {
        kkc[pos].isSameMAP = true;  // initializtion
        // 1. the number of instructions should be equal
        if(kkc[pos].icnt1 == kkc[pos].icnt2) {
          int icnt = kkc[pos].icnt1;
          for(int i = 0; i < icnt; i++) { // for each pair of instructions
            // 2. each pair: should be the same pattern (case 123)
            if(kkc[pos].ap1[i].flag == kkc[pos].ap2[i].flag) {
              int flag = kkc[pos].ap1[i].flag;
              // 3.1. match the index
              Instruction *inst1 = kkc[pos].ap1[i].index;
              Instruction *inst2 = kkc[pos].ap2[i].index;
              if(sameValues(inst1, inst2)) { // have same index
                if(flag == 1) {
                  // 3.2. for case 1: match the cmp
                  Instruction *cmp1 = kkc[pos].ap1[i].cmp;
                  Instruction *cmp2 = kkc[pos].ap2[i].cmp;
                  if(!sameValues(cmp1, cmp2)) {  // do not have the same condition
                    kkc[pos].isSameMAP = false;
                  }
                }
                else if(flag == 2) {
                  // 3.3. for case 2: match for loop
                  Instruction *cmp1 = kkc[pos].ap1[i].bound;
                  Instruction *cmp2 = kkc[pos].ap2[i].bound;
                  if(!sameValues(cmp1, cmp2)) {  // do not have the same condition
                    kkc[pos].isSameMAP = false;
                  }
                }
              }
              else {
                kkc[pos].isSameMAP = false;
              }
            }
            else {  // not the same pattern
              //errs() << *kkc[pos].ap1[i].index << " and " << *kkc[pos].ap2[i].index << " are not the same pattern!\n";
              //errs() << "flags: " << kkc[pos].ap1[i].flag << " and " << kkc[pos].ap2[i].flag << '\n';
              kkc[pos].isSameMAP = false;
              break;  // break the loop and turn to next pos
            }
          }
        }
        else {  // num of instruction: not equal
          //errs() << "different num of instructions!\n";
          kkc[pos].isSameMAP = false;
        }
      }

      // 4. filter again: "false" subsets for "true" pairs
      // e.g., if k2 & k3 is not KKC, then k1 & k3 or k2 & k4 or k1 & cannot be KKC 
      for(int tpos = 0; tpos < ccnt; tpos++) {
        // test for all "true" pairs
        if(kkc[tpos].isSameMAP) {
          int tkernel1 = kkc[tpos].kernel1;
          int tkernel2 = kkc[tpos].kernel2;
          // go through all "false" pairs
          for(int fpos = 0; fpos < ccnt; fpos++) {
            if(!kkc[fpos].isSameMAP) {
              int fkernel1 = kkc[fpos].kernel1;
              int fkernel2 = kkc[fpos].kernel2;
              // subset is "false"!
              if(tkernel1 <= fkernel1 && tkernel2 >= fkernel2) {
                kkc[tpos].isSameMAP = false;
              }
            }
          }
        }
      }
      /*
      for(int i = 0; i < ccnt; i++) {
        errs() << "producer: " << kkc[i].kernel1 << ", " << kkc[i].arg1 << ":\n";
        for(int j = 0; j < kkc[i].icnt1; j++) {
          errs() << j << ": " << *kkc[i].ap1[j].index << '\n';
          errs() << kkc[i].ap1[j].flag << '\n';         
          if(kkc[i].ap1[j].flag == 1) { // branch
            errs() << "cmp: " << *kkc[i].ap1[j].cmp << '\n';
          }        
        }
        errs() << "consumer: " << kkc[i].kernel2 << ", " << kkc[i].arg2 << ":\n";
        for(int j = 0; j < kkc[i].icnt2; j++) {
          errs() << j << ": " << *kkc[i].ap2[j].index << '\n';
          errs() << kkc[i].ap2[j].flag << '\n';          
          if(kkc[i].ap2[j].flag == 1) { // branch
            errs() << "cmp: " << *kkc[i].ap2[j].cmp << '\n';
          }
        }
        errs() << "Result: ";
        if(kkc[i].isSameMAP)  errs() << "true!!!!\n";
        else                  errs() << "false!!!!\n";
      }
      */
      bool isKKC = false;
      for(int i = 0; i < ccnt; i++) {
        if(kkc[i].isSameMAP) {
          if(!isKKC) {  // the first pair
            errs() << "\t\tYes (";
            errs() << "between kernel" << kkc[i].kernel1+1 << " and kernel" << kkc[i].kernel2+1;
            isKKC =  true;
          }
          else {
            errs() << ", between kernel" << kkc[i].kernel1+1 << " and kernel" << kkc[i].kernel2+1;
          }
        }
      }
      // is KKC
      if(isKKC) {
        errs() << ")\n";
        errs() << "1\n";
      }
      // is not KKC
      else {
        errs() << "\t\tNo\n";
        errs() << "0\n";
      }
      return false;
    }
  }; // end of struct Hello
}  // end of anonymous namespace

char IsSameMAP::ID = 0;
static RegisterPass<IsSameMAP> X("issamemap", "find kernel-to-kernel communication",
                             false /* Only looks at CFG */,
                             false /* Analysis Pass */);
