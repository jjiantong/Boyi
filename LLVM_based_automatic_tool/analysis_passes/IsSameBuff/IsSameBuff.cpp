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
#include "llvm/Support/raw_ostream.h"
#include "llvm/Support/FormatVariadic.h"

using namespace llvm;

namespace {

  struct IsSameBuff : public ModulePass {
    static char ID;
    IsSameBuff() : ModulePass(ID) {}    
    
    struct SuitInst {
      int iy[5];          // arg id for specific kernel
      Instruction* i[5];  // inst
    };

    bool haveSameInst(SuitInst suitInst[], int x, int y[], int z[])  {

      int flag = 0;
      int same = 0;
      for(int i1 = 0; i1 < x-1; i1++) { // kernel: 0 ~ x-2
        for(int j1 = 0; j1 < z[i1]; j1++) { // every instruction
          for(int i2 = i1+1; i2 < x; i2++) { // kernel: the next ~ x-1
            for(int j2 = 0; j2 < z[i2]; j2++) { // every instruction
              if(suitInst[i1].i[j1]->isIdenticalTo(suitInst[i2].i[j2])) {
                errs() << i1 << " " << suitInst[i1].iy[j1] << " "; 
                errs() << i2 << " " << suitInst[i2].iy[j2] << '\n';
                flag = 1;
                same = 1;
                break;
              }
            }
            if(flag) {
              flag = 0; // break 2 loops: to judge next instruction
              break;
            }
          }
        }
      }    
      if(same)  return true;
      else      return false;
    }
      
    bool runOnModule(Module &M) override {

      // input: x and y[..] from NumOfKernels.out
      // x: number of kernels; 
      // y[i]: number of args for each kernel
      int x; 
      int y[10]; 
      std::string app = APP;
      std::string file = "/root/Work/llvm/apps/" + app + "/NumOfKernels.out";
      std::ifstream fin(file);
      char line[20];
      fin.getline(line, sizeof(line));
      std::stringstream ssx(line);
      ssx >> x;
      int i = 0;
      while(fin.getline(line, sizeof(line))) {
        std::stringstream ss(line);
        ss >> y[i++];
      }

      // z[..]: number of suitable args (cl_mem) for each kernel
      int z[10];
      SuitInst suitInst[10];

      int instcnt = -1;   // global arg id
      int ycnt    = -1;   // local arg id  
      int zcnt    = -1;   // to compute the suitable args for each kernel
      int xcnt    = 0;    // kernel id
      int cur     = y[0]; // arg bound (global) of each kernel 
      for(Module::iterator f = M.begin(), f2 = M.end(); f!=f2; f++) { // functions
        for(Function::iterator bb = f->begin(), e = f->end(); bb!=e; bb++) {  // basic blocks
          for(BasicBlock::iterator i = bb->begin(), i2 = bb->end(); i!=i2; i++) { // instructions
            std::string si = formatv("{0}",*i).str();
            if(si.find("clSetKernelArg") != std::string::npos) {  // find "clSetKernelArg"
              instcnt++;
              ycnt++;
              Instruction *Inst = dyn_cast<Instruction>(i); //errs() << *i << '\n';
              // find all args the "clSetKernelArg" inst uses
              int opcnt = 0;              
              for(Use &U: Inst->operands()) {
                Value *v = U.get();
                opcnt++;
                // we need the 4th arg with "cl_mem"
                if(opcnt == 4 && formatv("{0}",*v).str().find("cl_mem") != std::string::npos) { 
                  Instruction *arg4 = dyn_cast<Instruction>(v); 
                  //errs() << "find : " << *arg4 << '\n';                 
                  // the same kernel
                  if(instcnt < cur) {
                    zcnt++; // actual (suitable) cnt +1
                    //errs() << xcnt << ", " << ycnt << " ---- " << zcnt << '\n';
                  }
                  // change to next kernel
                  else {
                    xcnt++;               // next kernel
                    ycnt = instcnt - cur; // real position
                    z[xcnt-1] = zcnt+1;   // record kernel's actually (suitable) cnt
                    zcnt = 0;             // start cnting next kernel
                    cur += y[xcnt];       // next kernel's location boundary
                    //errs() << xcnt << ", " << ycnt << " ---- " << zcnt << '\n';
                  }
                  suitInst[xcnt].iy[zcnt] = ycnt; // real position
                  suitInst[xcnt].i[zcnt]  = arg4; // and instruction
                }            
              }
            }
          }
        }
      }
      z[xcnt] = zcnt+1; // record the last kernel's actually cnt

      bool same = haveSameInst(suitInst, x, y, z);
      int cnt = 0;
      // until find same inst
      while((!same) && cnt<5) {
        for(int i = 0; i < x; i++) {  // every kernel
          for(int j = 0; j < z[i]; j++) { // every instruction
            Instruction *inst = dyn_cast<Instruction>(suitInst[i].i[j]);  // fetch from suitInst
            // for bitcast or load inst
            if(inst->getOpcode() == Instruction::BitCast
            || inst->getOpcode() == Instruction::Load) {
              Value *v = inst->getOperand(0);
              inst = dyn_cast<Instruction>(v);
              suitInst[i].i[j] = inst;
            }
          }
        }
        same = haveSameInst(suitInst, x, y, z);
        cnt ++;
      }
      return false;
    }
  };
}  // end of anonymous namespace

char IsSameBuff::ID = 0;
static RegisterPass<IsSameBuff> X("issamebuff", "do on clSetKernelArg's arguments of host code",
                             false /* Only looks at CFG */,
                             false /* Analysis Pass */);
