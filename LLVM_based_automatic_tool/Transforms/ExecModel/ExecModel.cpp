#define APP "PS"

#include <iostream>
#include <sstream>
#include <fstream>
#include <string>

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

  struct ExecModel : public ModulePass {
    static char ID;
    ExecModel() : ModulePass(ID) {}    

    bool runOnModule(Module &M) override {

      // we need the results of direct prediction from ExecModel.in
      // 1: NDR
      // 2: SWI
      // 3: NDR+C
      // 4: SWI+C
      int em = 0;

      std::string app = APP;
      std::string file = "/root/Work/llvm/apps/" + app + "/ExecModel.in";
      std::ifstream fin(file);
      char line[20];
      fin.getline(line, sizeof(line));
      std::stringstream ss(line);
      ss >> em;

      if(em == 1)
      {
        errs() << "\t\tNDR\n";
      }
      else if(em == 3)
      {
        errs() << "\t\tNDR+C\n";
      }
      else if(em == 4)
      {
        errs() << "\t\tSWI+C\n";
      }
      else
      {
        errs() << "\t\tSWI\n";
      }

      /*
      for(Module::iterator f = M.begin(), f2 = M.end(); f!=f2; f++) // functions
      { 
        if(f->getCallingConv() == 76)
        {
          k++;
          int pos = findKernel(kList, kcnt, k);
          // if k is in kList: find its position
          if(pos != -1) 
          {
            kList[pos].bbcnt = 0;
            for(Function::iterator bb = f->begin(), e = f->end(); bb!=e; bb++)  // basic blocks
            {
              BasicBlock *bbtmp = dyn_cast<BasicBlock>(bb); //errs() << bbtmp->getName() << '\n';            
              kList[pos].bbList[kList[pos].bbcnt].bb = bbtmp;
              kList[pos].bbList[kList[pos].bbcnt].name = bbtmp->getName();
              kList[pos].bbList[kList[pos].bbcnt].keep = true;
              kList[pos].bbcnt++;
            }
          }
        }
      }

      // if there are args be consider
      if(arg)
      {
        int k = -1;
        for(Module::iterator f = M.begin(), f2 = M.end(); f!=f2; f++) // functions
        { 
          if(f->getCallingConv() == 76)
          {
            k++;
            int acnt = -1;
            for(Function::arg_iterator a = f->arg_begin(), e = f->arg_end(); a != e; a++)
            {
              acnt++;
              // if (k, acnt) is in wgarg: get its value
              int value = match(wgarg, wgacnt, k, acnt);
              if(value != -1) 
              {
                // and find the position of k
                int pos = findKernel(kList, kcnt, k);   //errs() << a->getName() << '\n';            
                for(Function::iterator bb = f->begin(), e = f->end(); bb!=e; bb++)  // all basic blocks
                {
                  for(BasicBlock::iterator i = bb->begin(), i2 = bb->end(); i!=i2; i++) // all instructions
                  {
                    std::string si = formatv("{0}",*i).str();
                    if(si.find(a->getName()) != std::string::npos)  // find the related instructions
                    {                  
                      Instruction *inst = dyn_cast<Instruction>(i); //errs() << "inst: " << *i << '\n';
                      BasicBlock *ibb = inst->getParent();
                      // find the position of its parent bb
                      int bbpos = findBB(kList, pos, ibb); 
                      // this inst needs to be considered only when its situation now is "true"
                      if(kList[pos].bbList[bbpos].keep) 
                      {
                        int res = findTerminator(ibb, inst, a->getName(), value); //errs() << "parent bb: " << kList[pos].bbList[bbpos].name << '\n';//errs() << "result value: " << res << '\n';                      
                        // valid result
                        if(res != -100)
                        {
                          Instruction *last_inst = ibb->getTerminator();
                          if(BranchInst *br_inst = dyn_cast<BranchInst>(last_inst))
                          {
                            // this inst needs to be considered only when it leads to a definite branch
                            // it should be a conditional branch
                            if(br_inst->isConditional())
                            {
                              BasicBlock *dest; //errs() << "br: " << *br_inst << '\n';                             
                              if(res == 1)
                              {
                                dest = br_inst->getSuccessor(1);
                              }
                              else if(res == 0)
                              {
                                dest = br_inst->getSuccessor(0);
                              }
                              //errs() << "handle: " << dest->getName() << '\n';
                              handleBB(dest, ibb, kList, pos);
                            }
                          }
                        }                       
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
      for(int i = 0; i < kcnt; i++)
      { //errs() << i << '\n';       
        int y = 0;
        int n = 0;
        for(int j = 0; j < kList[i].bbcnt; j++)
        { //errs() << "bb: " << kList[i].bbList[j].name << ":\t";         
          if(kList[i].bbList[j].keep)
          {           
            y++;  //errs() << "y\n";
          }
          else
          {           
            n++;  //errs() << "n\n";
          }
        }
        // if we delete more than half of the bbs
        if(n > y)
        {
          errs() << "\t\tYes\n";
          errs() << "1\n";
          return false;
        }
      }
      errs() << "\t\tNo\n";
      errs() << "0\n";
      return false;
      */
    }
  };
}  // end of anonymous namespace

char ExecModel::ID = 0;
static RegisterPass<ExecModel> X("execmodel", "direct prediction + potential evolution of swi",
                             false /* Only looks at CFG */,
                             false /* Analysis Pass */);
