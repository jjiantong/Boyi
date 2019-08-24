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
#include "llvm/IR/DerivedTypes.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Support/FormatVariadic.h"

using namespace llvm;

namespace {

  struct IsRdWr : public ModulePass {
    static char ID;
    IsRdWr() : ModulePass(ID) {}

    struct RW {
      int kernel;   // kernel id
      int arg;      // arg id
      bool read;    // load or not
      bool write;   // store or not
    };

    int match(RW rw[], int k, int a, int rwcnt) {

      for(int i = 0; i < rwcnt; i++) {
        if(rw[i].kernel == k && rw[i].arg == a) {
          return i;
        }
      }
      return -1;
    }

    bool runOnModule(Module &M) override {

      // we need scnt and same[..] from IsSameBuff.out
      // scnt: number of the pairs of args with same buffer
      // same[..]: pairs of args with same buffer
      int same[10][4];
      std::string app = APP;
      std::string file = "/root/Work/llvm/apps/" + app + "/IsSameBuff.out";
      std::ifstream fin(file);
      char line[20];
      int scnt = 0;
      while(fin.getline(line, sizeof(line))) {
        std::stringstream ss(line);
        ss >> same[scnt][0];
        ss >> same[scnt][1];
        ss >> same[scnt][2];
        ss >> same[scnt][3];
        scnt++;
      }

      // initialize rw struct
      RW rw[10];
      int rwcnt = 0;
      for(int i = 0; i < scnt; i++) {
        for(int j = 0; j < 2; j++) {
          int k = same[i][j*2];
          int a = same[i][j*2+1];
          // has not stored to rw
          if(match(rw, k, a, rwcnt) == -1) {
            rw[rwcnt].kernel = k;
            rw[rwcnt].arg    = a;
            rw[rwcnt].read   = false;
            rw[rwcnt].write  = false;
            rwcnt++;
          }
        }
      }

      int kcnt = -1;
      for(Module::iterator f = M.begin(), f2 = M.end(); f!=f2; f++) { // all functions
        if(f->getCallingConv() == 76) { // __kernel: 76
          kcnt++;
          int acnt = -1;
          for(Function::arg_iterator a = f->arg_begin(), e = f->arg_end(); a != e; a++) { // all args of the function
            acnt++;
            int pos = match(rw, kcnt, acnt, rwcnt);
            // if (kcnt, acnt) is in rw: find its position
            if(pos != -1) {
              //errs() << *a << '\n';
              for(Function::iterator bb = f->begin(), e = f->end(); bb!=e; bb++) {  // all basic blocks
                for(BasicBlock::iterator i = bb->begin(), i2 = bb->end(); i!=i2; i++) { // all instructions
                  std::string si = formatv("{0}",*i).str(); // to string
                  // find the related instructions: a gep instruction
                  if(si.find(a->getName()) != std::string::npos) {                   
                    Instruction *i2 = dyn_cast<Instruction>(i); //errs() << "inst: " << *i << '\n';
                    // until find the load or store operation
                    while(i2->getOpcode() != Instruction::Load
                    && i2->getOpcode() != Instruction::Store) {
                      // find what inst uses this inst
                      for(User *U: i2->users()) {
                        if(Instruction *inst = dyn_cast<Instruction>(U)) {
                          //errs() << "used in: " << *inst << '\n';
                          if(inst->getOpcode() == Instruction::Load) {
                            rw[pos].read = true;
                          }
                          else if(inst->getOpcode() == Instruction::Store) {
                            rw[pos].write = true;
                          }
                          i2 = inst;  // if the instruction is not load/store (for example bitcast),
                                      // then find what instruction uses this (for example bitcast) intruction
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
      /*
      for(int i = 0; i < rwcnt; i++) {
        errs() << "kernel: " << rw[i].kernel << ", arg: " << rw[i].arg << ", ";
        if(rw[i].read)  errs() << "true, ";
        else            errs() << "false, ";
        if(rw[i].write) errs() << "true\n";
        else            errs() << "false\n";
      }
      */
      for(int i = 0; i < scnt; i++) {
        int pos1 = match(rw, same[i][0], same[i][1], rwcnt);
        int pos2 = match(rw, same[i][2], same[i][3], rwcnt);
        if(rw[pos1].write && rw[pos2].read) {
          errs() << same[i][0] << " " << same[i][1] << " " << same[i][2] << " " << same[i][3] << '\n';
        }
      }
      return false;
    }
  }; // end of struct Hello
}  // end of anonymous namespace

char IsRdWr::ID = 0;
static RegisterPass<IsRdWr> X("isrdwr", "find read and write operations on OpenCL kernels",
                             false /* Only looks at CFG */,
                             false /* Analysis Pass */);
