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

using namespace llvm;

namespace {

  struct VarBuffInHost : public ModulePass {
    static char ID;
    VarBuffInHost() : ModulePass(ID) {}    

    struct VarBuff {
      int varcnt;           // number of wg args in this kernel
      int varidx[10];       // arg index
      Instruction *ska[10]; // the related clSetKernelArg
      int buffcnt;          // number of wg buffs in this kernel
      int buffidx[10];      // arg index
      Instruction *cb[10];  // the related clCreateBuffer
      int buffty[10];       // size of element type
    };

    int findPid(Function *func, std::string sp, int *value) {

      for(Function::iterator bb = func->begin(), e = func->end(); bb!=e; bb++) { // basic blocks
        for(BasicBlock::iterator i = bb->begin(), i2 = bb->end(); i!=i2; i++) { // instructions
          std::string si = formatv("{0}", *i).str();                     
          if(si.find(sp) != std::string::npos) {
            Instruction *inst = dyn_cast<Instruction>(i);
            if(inst->getOpcode() == Instruction:: GetElementPtr) {  // GEP instruction
              //errs() << "inst: " << *inst << '\n';
              for(User *U: inst->users()) {
                if(Instruction *Inst = dyn_cast<Instruction>(U)) {
                  if(Inst->getOpcode() == Instruction::Store) {
                    //errs() << "Inst: " << *Inst << '\n';
                    Value *op0 = Inst->getOperand(0);
                    *value = (dyn_cast<ConstantInt>(op0))->getSExtValue();
                  }
                }
              }
              Value *op2 = inst->getOperand(2); // op2 refers to the index
              //errs() << "value: " << *op2 << '\n';
              ConstantInt *ci = dyn_cast<ConstantInt>(op2);
              return ci->getSExtValue();  // find the index
            }
          }
        }
      }
      return -1;  // cannot find
    }

    int compute(std::string otor, int op1, int op2) {

      if(otor == "mul")       return op1*op2;
      else if(otor == "div")  return op1/op2;
      else if(otor == "add")  return op1+op2;
      else if(otor == "sub")  return op1-op2;
      else if(otor == "lshr") return (unsigned int)op1>>op2;
      else if(otor == "ashr") return op1>>op2;
      else                    return op1<<op2;  // otor == "shl"
    }

    // find gep recursively -> test whether the variable is related to n_work_items
    Instruction* findGEP(Instruction *inst, int cnt) {

      for(Use &U: inst->operands()) {
        Value *v = U.get();
        if(Instruction *i = dyn_cast<Instruction>(v)) {
          //errs() << "inst: " << *i << '\n';
          if(cnt > 5)  
            return NULL;
          else if(i->getOpcode() == Instruction::GetElementPtr) 
            return i;
          else 
            return findGEP(i, cnt+1); // continue to find gep
        }
        else  {
          return NULL;
        }
      }
      return NULL;
    }

    // get the result of the value and another constant
    int computeConstant(Instruction *inst, int value, std::string otor) {

      Value *op0 = inst->getOperand(0);
      Value *op1 = inst->getOperand(1);
      // if op0 is a constant
      if(isa<Constant>(op0))  {
        ConstantInt *c = dyn_cast<ConstantInt>(op0);
        return compute(otor, c->getSExtValue(), value);
      }
      // if op1 is a constant
      else if(isa<Constant>(op1)) {
        ConstantInt *c = dyn_cast<ConstantInt>(op1);
        return compute(otor, value, c->getSExtValue());
      }
      // op0 and op1 are not constant 
      // -> exsit another variable except for "n_work_groups" and "n_work_items"
      else  {
        return -1;
      }
    }

    // from the gep of "n_work_items", to the original inst
    int GEPBack(Instruction *gep, Instruction *inst, int value) {

      // find the original inst
      if(gep->isIdenticalTo(inst)) {
        return value;
      }
      // have not find -> continue
      else  {
        // find where the gep is used in
        for(User *U: gep->users()) {         
          Instruction *i = dyn_cast<Instruction>(U);  //errs() << *U << '\n';
          switch(i->getOpcode()) {
            // need to compute
            case Instruction::Mul:
              return computeConstant(i, value, "mul");
            case Instruction::UDiv:
            case Instruction::SDiv:
              return computeConstant(i, value, "div");
            case Instruction::Add:
              return computeConstant(i, value, "add");
            case Instruction::Sub:
              return computeConstant(i, value, "sub");
            case Instruction::LShr:
              return computeConstant(i, value, "lshr");
            case Instruction::AShr:
              return computeConstant(i, value, "ashr");
            case Instruction::Shl:
              return computeConstant(i, value, "shl");
            default:
              return GEPBack(i, inst, value);
          }         
        }
        return -1;
      }
    }

    // compute the value of one operand (of the inst related to "n_work_groups")
    int computeOperand(Value *operand, int wi, int wipid) {

      // if this value is a constant
      if(isa<Constant>(operand)) {
        ConstantInt *c = dyn_cast<ConstantInt>(operand);
        return c->getSExtValue();
      }
      // if is not a constant
      // -> this value can be related to "n_work_items"
      else {
        Instruction *inst = dyn_cast<Instruction>(operand);
        if(Instruction *gep = dyn_cast<Instruction>(findGEP(inst, 0))) {
          std::string sgep = formatv("{0}", *gep).str();
          if(sgep.find("%struct.Params") != std::string::npos) { // if contains ".."
            Value *op2 = gep->getOperand(2); // op2 refers to the index
            ConstantInt *ci = dyn_cast<ConstantInt>(op2);
            // if the index matches "n_work_items"
            if(ci->getSExtValue() == wipid) {
              //errs() << "find the gep: " << *gep << "\n";
              return GEPBack(gep, inst, wi);
            }
          }
        }
        else {  // not a constant, and cannot find gep
          return -1;
        }
        return wi;
      }
    }

    // compute
    int computeValue(Instruction *inst, Instruction *op, std::string otor, int value, int wi, int wipid) {

      Value *op0 = inst->getOperand(0); //errs() << "op0: " << *op0 << '\n';
      Value *op1 = inst->getOperand(1); //errs() << "op1: " << *op1 << '\n';      
      if(Instruction *i0 = dyn_cast<Instruction>(op0)) {  // op0 is inst
        // if op0 is related to "n_work_groups"
        if(i0->isIdenticalTo(op)) {
          int operand = computeOperand(op1, wi, wipid); // compute op1
          return compute(otor, value, operand);
        }
        // if op0 is not related to "n_work_groups"
        // -> op1 must be related to "n_work_groups"
        else  {
          int operand = computeOperand(op0, wi, wipid); // compute op0
          return compute(otor, operand, value);
        }
      }
      // if op1 is related to "n_work_groups"
      else  {
        int operand = computeOperand(op0, wi, wipid); // compute op0
        return compute(otor, operand, value);
      }
    }

    bool runOnModule(Module &M) override {

      // 1. we need _kerenl and _args[..] from NumOfKernels.out
      // _kernels: number of kernels; 
      // _args[i]: number of args for each kernel
      // ty[i][j]: size (in bytes) of element type of arg i,j
      int _kernels;  
      int _args[10]; 
      int ty[4][10];
      std::string app = APP;
      std::string file = "/root/Work/llvm/apps/" + app + "/NumOfKernels.out";
      std::ifstream fin(file);
      char line[20];
      fin.getline(line, sizeof(line));
      std::stringstream ssx(line);
      ssx >> _kernels;
      int i = 0;
      while(fin.getline(line, sizeof(line))) {
        std::stringstream ss(line);
        ss >> _args[i];
        for(int j = 0; j < _args[i]; j++)
          ss >> ty[i][j];
        i++;
      }
      
      // 2. we need to return __ kernel's __ arg = __
      // varcnt: number of wg args
      // var[..][0]: kernel id
      // var[..][1]: arg id
      // var[..][2]: value
      int varcnt = 0;
      int var[10][3];

      // 3. we need to return __ kernel's __ arg's buffer size = __
      // buffcnt: number of wg args
      // buff[..][0]: kernel id
      // buff[..][1]: arg id
      // buff[..][2]: value
      int buffcnt = 0;
      int buff[10][3];
      
      // begin...
      // 1. find the location (pid) of n_work_groups and n_work_items
      int wgpid = -1;   // location of "n_work_groups" in struct params
      int wipid = -1;   // location of "n_work_items" in struct params
      int wgvalue = -1; // value of "n_work_groups"
      int wivalue = -1; // value of "n_work_items"
      for(Module::iterator f = M.begin(), f2 = M.end(); f!=f2; f++) { // functions
        if(f->getName() == "main") {
          for(Function::iterator bb = f->begin(), e = f->end(); bb!=e; bb++) {  // basic blocks
            for(BasicBlock::iterator i = bb->begin(), i2 = bb->end(); i!=i2; i++) { // instructions
              Instruction *inst = dyn_cast<Instruction>(i);
              if(inst->getOpcode() == Instruction::Call) {               
                CallInst *cinst = dyn_cast<CallInst>(inst); //errs() << "call: " << *inst << '\n';
                Function *func = cinst->getCalledFunction();  // get the called function
                FunctionType *ty = func->getFunctionType();
                int acnt = ty->getNumParams();  // num of args
                for(int i = 0; i < acnt; i++) {
                  Value *arg = cinst->getArgOperand(i); // test for each arg
                  std::string sarg = formatv("{0}", *arg).str();
                  if(sarg.find("%struct.Params") != std::string::npos) { // if contains ".."
                    //errs() << "Function: " << func->getName() << '\n';
                    wipid = findPid(func, "%n_work_items", &wivalue);   // find pid and value of "n_work_items"
                    wgpid = findPid(func, "%n_work_groups", &wgvalue);  // find pid and value of "n_work_groups"                
                    //errs() << "wg: " << wgpid << ", " << wgvalue << '\n';
                    //errs() << "wi: " << wipid << ", " << wivalue << '\n';
                    break;
                  }
                }                   
              }
            }
          }
        }        
      }
      if(wgpid == -1) { // no arg
        errs() << 0 << '\n' << 0 << '\n';
        return false;
      }
      
      // 2. find potential clSetKernelArg inst
      VarBuff vb[10];
      for(int i = 0; i < _kernels; i++) {
        vb[i].varcnt   = 0;  // number of wg args
        vb[i].buffcnt = 0;  // number of wg buffs
      }
      int instcnt = -1;
      int xcnt    = 0;
      int ycnt    = -1;
      int cur     = _args[0];
      for(Module::iterator f = M.begin(), f2 = M.end(); f!=f2; f++) { // functions
        for(Function::iterator bb = f->begin(), e = f->end(); bb!=e; bb++) {  // basic blocks
          for(BasicBlock::iterator i = bb->begin(), i2 = bb->end(); i!=i2; i++) { // instructions
            std::string si = formatv("{0}",*i).str();
            if(si.find("clSetKernelArg") != std::string::npos) {  // find "clSetKernelArg"
              instcnt++;
              ycnt++;
              // change to next kernel
              if(instcnt == cur) {
                xcnt++;
                ycnt = 0;
                cur += _args[xcnt]; // next kernel's location boundary
              }
              Instruction *Inst = dyn_cast<Instruction>(i);
              // need the 4th arg
              Value *v = Inst->getOperand(3);
              // numeric type                                                             
              if(formatv("{0}",*v).str().find("cl_mem") == std::string::npos) {                                                      
                vb[xcnt].ska[vb[xcnt].varcnt] = Inst;  //errs() << "find: " << *Inst << '\n';
                vb[xcnt].varidx[vb[xcnt].varcnt] = ycnt;
                vb[xcnt].varcnt++;
              }
              else {
                Instruction *iv = dyn_cast<Instruction>(v); // bitcast inst //errs() << "cl_mem: " << *v << '\n';
                Instruction *ib = dyn_cast<Instruction>(iv->getOperand(0)); // 1st arg of bitcast
                for(User *U: ib->users()) {  // ib is used in ?
                  Instruction *buff = dyn_cast<Instruction>(U);
                  if(buff->getOpcode() == Instruction::Store) { // find store inst
                    //errs() << *buff << '\n';                  
                    Instruction *Inst = dyn_cast<Instruction>(buff->getOperand(0)); //errs() << *Inst << '\n';
                    std::string si = formatv("{0}",*Inst).str();
                    if(si.find("clCreateBuffer") != std::string::npos) {  // find "clCreateBuffer"
                      vb[xcnt].cb[vb[xcnt].buffcnt] = Inst;  //errs() << "find: " << *Inst << '\n';
                      vb[xcnt].buffidx[vb[xcnt].buffcnt] = ycnt;
                      vb[xcnt].buffty[vb[xcnt].buffcnt] = ty[xcnt][ycnt];
                      vb[xcnt].buffcnt++;
                    }                   
                  }
                }
              }                              
            }
          }
        }
      }
      /*
      for(int i = 0; i < _kernels; i++)
      {
        errs() << i << ": \n";
        errs() << vb[i].varcnt << "\n";
        for(int j = 0; j < vb[i].varcnt; j++)
        {
          errs() << j << ',' << vb[i].varidx[j] << ':' << *vb[i].ska[j] << '\n';
        }
        errs() << vb[i].buffcnt << "\n";
        for(int j = 0; j < vb[i].buffcnt; j++)
        {
          errs() << j << ',' << vb[i].buffidx[j] << ':' << *vb[i].cb[j] << '\n';
        }
      }
      */
      // 3. find insts according to step 1 (gep, index), and test according to step 2 (suitable arg)
      for(Module::iterator f = M.begin(), f2 = M.end(); f!=f2; f++) { // functions
        if(f->getName() == "main") {
          for(Function::iterator bb = f->begin(), e = f->end(); bb!=e; bb++) {  // basic blocks
            for(BasicBlock::iterator i = bb->begin(), i2 = bb->end(); i!=i2; i++) { // instructions
              Instruction *inst = dyn_cast<Instruction>(i);
              std::string sinst = formatv("{0}", *inst).str();
              if(sinst.find("%struct.Params") != std::string::npos) { // if contains ".."
                if(inst->getOpcode() == Instruction::GetElementPtr) {
                  Value *op2 = inst->getOperand(2); // op2 refers to the index
                  ConstantInt *ci = dyn_cast<ConstantInt>(op2);
                  // if the index matches "n_work_groups"
                  if(ci->getSExtValue() == wgpid) {                   
                    Instruction *inst2 = inst;  //errs() << "find: " << *inst << '\n';        
                    int value = 1;
                    bool stop = false;
                    while(!stop) {
                      for(User *U: inst2->users()) {  // inst2 is used in ?
                        Instruction *Inst = dyn_cast<Instruction>(U); //errs() << *U << '\n';
                        switch(Inst->getOpcode()) {
                          case Instruction::Invoke: // clSetKErnelArg or clCreateBuffer
                            for(int i = 0; i < _kernels; i++) {
                              for(int j = 0; j < vb[i].varcnt; j++) {
                                if(Inst->isIdenticalTo(vb[i].ska[j])) {  // the same inst
                                  //errs() << "yes\n";
                                  var[varcnt][0] = i;
                                  var[varcnt][1] = vb[i].varidx[j];
                                  var[varcnt][2] = value;  //errs() << "value: " << value << '\n';                                 
                                  varcnt++;
                                }
                              }
                              for(int j = 0; j < vb[i].buffcnt; j++) {
                                if(Inst->isIdenticalTo(vb[i].cb[j])) {  // the same inst
                                  // get the new buff size (using element type of the buffer object)
                                  int newval = value / vb[i].buffty[j];
                                  if(newval == 1) {
                                    //errs() << "yes\n";
                                    buff[buffcnt][0] = i;
                                    buff[buffcnt][1] = vb[i].buffidx[j];
                                    buffcnt++;
                                  }
                                }
                              }
                            }
                            stop = true;
                            break;
                          case Instruction::Call: 
                          case Instruction::Store:                           
                            stop = true;  //errs() << "value: " << value << '\n';
                            break;
                          // continue
                          case Instruction::Mul:
                            value = computeValue(Inst, inst2, "mul", value, wivalue, wipid);
                            inst2 = Inst;
                            break;
                          case Instruction::UDiv:
                            value = computeValue(Inst, inst2, "div", value, wivalue, wipid);
                            inst2 = Inst;
                            break;
                          case Instruction::Add:
                            value = computeValue(Inst, inst2, "add", value, wivalue, wipid);
                            inst2 = Inst;
                            break;
                          case Instruction::Sub:
                            value = computeValue(Inst, inst2, "sub", value, wivalue, wipid);
                            inst2 = Inst;
                            break;
                          default:
                            inst2 = Inst;
                            break;
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

      errs() << varcnt << '\n';
      for(int i = 0; i < varcnt; i++) {
        // invalid result
        if(var[i][2] < 0) continue;
        errs() << var[i][0] << ' ';
        errs() << var[i][1] << ' ';
        errs() << var[i][2] << '\n';
      }

      errs() << buffcnt << '\n';
      for(int i = 0; i < buffcnt; i++) {
        errs() << buff[i][0] << ' ';
        errs() << buff[i][1] << '\n';
      }
      return false;
    }
  };
}  // end of anonymous namespace

char VarBuffInHost::ID = 0;
static RegisterPass<VarBuffInHost> X("varbuffinhost", "do on clSetKernelArg's arguments of host code",
                             false /* Only looks at CFG */,
                             false /* Analysis Pass */);
