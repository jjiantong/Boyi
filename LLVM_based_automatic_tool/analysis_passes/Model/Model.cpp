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

  struct Model : public ModulePass {
    static char ID;
    Model() : ModulePass(ID) {}    

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

    }
  };
}  // end of anonymous namespace

char Model::ID = 0;
static RegisterPass<Model> X("model", "direct prediction + potential evolution of swi",
                             false /* Only looks at CFG */,
                             false /* Analysis Pass */);
