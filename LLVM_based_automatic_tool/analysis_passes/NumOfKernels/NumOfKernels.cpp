#include <string>

#include "llvm/Pass.h"
#include "llvm/IR/User.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/Instruction.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Support/FormatVariadic.h"

using namespace llvm;

namespace {

  struct NumOfKernels : public ModulePass {
    static char ID;
    NumOfKernels() : ModulePass(ID) {}

    bool runOnModule(Module &M) override {

      int kcnt = 0;
      int acnt[4];
      int ty[4][10];
      for(Module::iterator f = M.begin(), f2 = M.end(); f!=f2; f++) { // all functions       
        if(f->getCallingConv() == 76) { // __kernel: 76
          acnt[kcnt] = 0;
          for(Function::arg_iterator a = f->arg_begin(), e = f->arg_end(); a != e; a++) { // all args of the function
            //errs() << *a << '\n';
            ty[kcnt][acnt[kcnt]] = a->getType()->getPrimitiveSizeInBits() / 8;
            if(a->getType()->isPointerTy()) { // pointer type
              //errs() << *a->getType() << '\n';
              //errs() << a->getType()->getPointerElementType()->getPrimitiveSizeInBits() << '\n';
              ty[kcnt][acnt[kcnt]] = a->getType()->getPointerElementType()->getPrimitiveSizeInBits() / 8;
            }            
            acnt[kcnt]++;
          }
          kcnt++;
        }
      }
      
      errs() << kcnt << '\n';
      if(kcnt > 1) {  // if multi-kernels
        for(int i = 0; i < kcnt; i++) {
          errs() << acnt[i] << ' ';
          for(int j = 0; j < acnt[i]; j++) {
            errs() << ty[i][j] << ' ';
          }
          errs() << '\n';
        }
      }     
      return false;
    }
  }; // end of struct Hello
}  // end of anonymous namespace

char NumOfKernels::ID = 0;
static RegisterPass<NumOfKernels> X("numofkernels", "count the number of kernels and args",
                             false /* Only looks at CFG */,
                             false /* Analysis Pass */);
