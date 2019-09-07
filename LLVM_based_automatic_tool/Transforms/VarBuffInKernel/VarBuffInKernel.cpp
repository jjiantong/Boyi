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

  struct VarBuffInKernel : public ModulePass {
    static char ID;
    VarBuffInKernel() : ModulePass(ID) {}    

    struct BBList {
      BasicBlock *bb;         // bb
      std::string name;       // name of bb
      bool keep;              // keep or not
    };

    struct InstList {
      int icnt;               // number of inst related to the intermediate buffer object
      Instruction *inst[20];  // inst
      int exec[10];           // execute or not
    };
    
    struct KList {
      int bbcnt;              // number of bb
      BBList bbList[40];      // bbList
      int ibuffcnt;           // number of intermediate buffer objects
      int ibuff[10];          // intermediate buffer objects
      int req[10];            // required or not
      InstList instList[10];  // instList
      int argcnt;             // number of args regarding to #wg
      int arg[10];            // args regarding to #wg
      int argval[10];         // value of arg when #wg=1
    };

    // match the kernel-arg, and return its value
    int getArgVal(KList kList[], int k, int a) {

      for(int i = 0; i < kList[k].argcnt; i++) {
        if(a == kList[k].arg[i]) {
          return kList[k].argval[i];
        }
      }
      return -1;
    }

    // match the kernel-arg (for ibuff), and return its pos, if is required
    int getBuffPos(KList kList[], int k, int a) {

      for(int i = 0; i < kList[k].ibuffcnt; i++) {
        if(a == kList[k].ibuff[i] && kList[k].req[i] == 0) {
          return i;
        }
      }
      return -1;
    }

    int getBBPos(KList kList[], int k, BasicBlock *ibb) {

      for(int i = 0; i < kList[k].bbcnt; i++) {
        if(ibb == kList[k].bbList[i].bb) {
          return i;
        }
      }
      return -1;
    }

    // match value and its pos in the kernel, if it is an arg
    int getArgPos(Module &M, int kid, Value *v) {

      int k = -1;
      for(Module::iterator f = M.begin(), f2 = M.end(); f!=f2; f++) { // functions
        if(f->getCallingConv() == 76) {
          k++;
          if(k == kid) {
            int aid = -1;
            for(Function::arg_iterator a = f->arg_begin(), e = f->arg_end(); a != e; a++) {
              aid++;
              if(v->getName() == a->getName()) 
                return aid;
            }
          }        
        }
      }
      return -1;
    }

    bool canExecute(Instruction *inst, KList kList[], int pos) {

      BasicBlock *bb = inst->getParent();
      // find the pos of its partent bb
      int bbpos = getBBPos(kList, pos, bb);
      // inst is in a bb that can be deleted
      if(!kList[pos].bbList[bbpos].keep)  return false;
      else                                return true;
    }

    // only for local array
    bool isCompInst(Instruction *inst, std::string s[], int scnt) {

      if(inst->getOpcode() == Instruction::GetElementPtr) { 
        //errs() << "1: " << *inst << '\n';     
        for(User *U: inst->users()) {
          Instruction *sinst = dyn_cast<Instruction>(U);
          // used in a store inst
          if(sinst->getOpcode() == Instruction::Store) { 
            //errs() << "2: " << *sinst << '\n';           
            // get the two operands of the store inst
            Value *v0 = sinst->getOperand(0);
            Value *v1 = sinst->getOperand(1);
            Value *v;
            // find the other operand to test
            if(isa<Instruction>(v0) && inst == dyn_cast<Instruction>(v0))
              v = v1;
            else if(isa<Instruction>(v1) && inst == dyn_cast<Instruction>(v1))
              v = v0;
            else
              break;
            //errs() << "3: " << *v << '\n';            
            if(Instruction *linst = dyn_cast<Instruction>(v)) {
              if(linst->getOpcode() == Instruction::Load) { 
                //errs() << "load: " << *linst << '\n';              
                // one operand
                Value *vl = linst->getOperand(0);
                std::string svl = formatv("{0}", *vl).str();  //errs() << "test: " << svl << '\n';                
                for(int i = 0; i < scnt; i++) {
                  if(svl.find(s[i]) != std::string::npos) {
                    return false;
                  }
                }
              }
            }
          }
        }
      }
      return true;
    }
    
    int comp(Instruction *inst, int op1, int op2) {

      switch(inst->getOpcode()) {
        case Instruction::LShr:
          return (unsigned int)op1>>op2;
        case Instruction::AShr:
          return op1>>op2;
        case Instruction::Shl:
          return op1<<op2;
        case Instruction::Add:
          return op1+op2;
        case Instruction::Sub:
          return op1-op2;
        case Instruction::Mul:
          return op1*op2;
        case Instruction::UDiv:
        case Instruction::SDiv:
          return op1/op2;
        case Instruction::ICmp: {
          ICmpInst *icmp = dyn_cast<ICmpInst>(inst);
          switch(icmp->getPredicate()) {
            case CmpInst::Predicate::ICMP_EQ:   // equal
              return op1==op2 ? 1:0; 
            case CmpInst::Predicate::ICMP_NE:   // not equal
              return op1!=op2 ? 1:0;
            case CmpInst::Predicate::ICMP_UGT:  // unsigned greater than
            case CmpInst::Predicate::ICMP_SGT:  // signed greater than
              return op1>op2 ? 1:0;
            case CmpInst::Predicate::ICMP_UGE:  // unsigned greater or equal
            case CmpInst::Predicate::ICMP_SGE:  // signed greater or equal
              return op1>=op2 ? 1:0;
            case CmpInst::Predicate::ICMP_ULT:  // unsigned less than
            case CmpInst::Predicate::ICMP_SLT:  // signed less than
              return op1<op2 ? 1:0;
            case CmpInst::Predicate::ICMP_ULE:  // unsigned less or equal
            case CmpInst::Predicate::ICMP_SLE:  // signed less or equal
              return op1<=op2 ? 1:0;
            default:
              return -100;  // do not consider FCmpInst
          }
        }
        default:
          return -100;
      }
    }

    // recursively find the bb's terminator, and compute the value
    int compLastVal(BasicBlock *bb, Instruction *inst, std::string vname, int value) {

      //errs() << "inst: " << *inst << '\n';  //errs() << "value: " << value << '\n';
      if(inst == bb->getTerminator())  // end
        return value; //errs() << "terminator\n";
      else if(inst->getParent() != bb) // out of this bb
        return -100;  //errs() << "out of bb\n";
      else if(inst->getOpcode() == Instruction::Store)
        return -100;  //errs() << "meet store\n";
      else if(value == -100)
        return -100;
      else {
        // computing part
        switch(inst->getOpcode()) {
          case Instruction::ICmp:
          case Instruction::LShr:
          case Instruction::AShr:
          case Instruction::Shl:
          case Instruction::Add:
          case Instruction::Sub:
          case Instruction::Mul:
          case Instruction::UDiv:
          case Instruction::SDiv: {
            Value *op0 = inst->getOperand(0);
            Value *op1 = inst->getOperand(1);
            std::string sop0 = formatv("{0}", *op0).str();
            std::string sop1 = formatv("{0}", *op1).str();
            // op0 is constant, op1 uses the value
            if(isa<Constant>(op0) && sop1.find(vname) != std::string::npos) {
              ConstantInt *c0 = dyn_cast<ConstantInt>(op0);
              value = comp(inst, c0->getSExtValue(), value);
            }
            // op1 is constant, op0 uses the value
            else if(isa<Constant>(op1) && sop0.find(vname) != std::string::npos) {
              ConstantInt *c1 = dyn_cast<ConstantInt>(op1);
              value = comp(inst, value, c1->getSExtValue());
            }
            else {
              value = -100;
            }
            break;
          }       
        }        
        int ucnt = inst->getNumUses();  // get the number of users
        int res[10];
        int cnt = 0;
        for(User *U: inst->users()) {
          Instruction *i = dyn_cast<Instruction>(U);
          res[cnt++] = compLastVal(bb, i, inst->getName(), value); // do for each users
        }
        // if inst has 2 users or more
        if(inst->hasNUsesOrMore(2)) {
          for(int i = 0; i < ucnt; i++) {
            if(res[i] != -100) {  // only one will reach the terminator i think
              return res[i];
            }
          }
        }
        // if inst has 1 user (usually)
        else if(inst->hasOneUse()) {
          return res[0];
        }
        else {
          return -100;
        }
        return -100;
      }
    }

    // for call inst in kernel
    int compVal(Instruction *idx, Instruction *inst, int value, int level) {
      
      //errs() << "value before: " << value << '\n';
      level++;
      if(value == -100)
        return -100;
      if(level > 20)  // cannot find the idx inst
        return -100;
      if(inst->isIdenticalTo(idx))
        return value; // finish computing
      
      for(User *U: inst->users()) {
        if(Instruction *i = dyn_cast<Instruction>(U)) {
          //errs() << "compute: " << *i << '\n';
          // cast inst
          if(isa<CastInst>(i))
            return compVal(idx, i, value, level);
          // computing inst
          switch(i->getOpcode()) {
            case Instruction::LShr:
            case Instruction::AShr:
            case Instruction::Shl:
            case Instruction::Add:
            case Instruction::Sub:
            case Instruction::Mul:
            case Instruction::UDiv:
            case Instruction::SDiv: {
              Value *op0 = i->getOperand(0);
              Value *op1 = i->getOperand(1);
              // op0 is inst
              if(Instruction *op = dyn_cast<Instruction>(op0)) {
                // op0 = pre inst, op1 is a constant
                if(op->isIdenticalTo(inst) && isa<ConstantInt>(op1)) {
                  //errs() << "op0: " << *op << '\n';
                  //errs() << "op1: " << *op1 << '\n';
                  ConstantInt *c1 = dyn_cast<ConstantInt>(op1);
                  value = comp(i, value, c1->getSExtValue());
                  //errs() << "res: " << value << '\n';
                }
                else  // op0 != pre inst, or op1 is not a constant
                  return -100;
              }
              else if(Instruction *op = dyn_cast<Instruction>(op1))
              {
                if(op->isIdenticalTo(inst) && isa<ConstantInt>(op0)) {
                  ConstantInt *c0 = dyn_cast<ConstantInt>(op0);
                  value = comp(i, c0->getSExtValue(), value);
                }
                else  
                  return -100;
              }
              break;
            } 
            default:
              return -100;      
          }
          //errs() << "value after: " << value << '\n';
          return compVal(idx, i, value, level);
        }
      }
    }

    // for arg list
    int compVal(Instruction *idx, Instruction *inst, int pos, int value, int level) {
      
      level++;
      if(value > 20)
        return -100;
      if(value == -100)
        return -100;

      //errs() << "value before: " << value << '\n';
      //errs() << "compute: " << *inst << '\n';   
      // computing part
      if(inst->getOpcode() == Instruction::LShr
      || inst->getOpcode() == Instruction::AShr
      || inst->getOpcode() == Instruction::Shl
      || inst->getOpcode() == Instruction::Add
      || inst->getOpcode() == Instruction::Sub
      || inst->getOpcode() == Instruction::Mul
      || inst->getOpcode() == Instruction::UDiv
      || inst->getOpcode() == Instruction::SDiv) {
        
        Value *op;
        if(pos == 0) {
          op = inst->getOperand(1);
          if(ConstantInt *c = dyn_cast<ConstantInt>(op))
            value = comp(inst, value, c->getSExtValue());
          else
            return -100;
        }
        else {
          op = inst->getOperand(0);
          if(ConstantInt *c = dyn_cast<ConstantInt>(op))
            value = comp(inst, c->getSExtValue(), value);
          else
            return -100;
        }       
      }
      //errs() << "value after: " << value << '\n';

      if(inst->isIdenticalTo(idx))
        return value;

      if(inst->getOpcode() == Instruction::LShr
      || inst->getOpcode() == Instruction::AShr
      || inst->getOpcode() == Instruction::Shl
      || inst->getOpcode() == Instruction::Add
      || inst->getOpcode() == Instruction::Sub
      || inst->getOpcode() == Instruction::Mul
      || inst->getOpcode() == Instruction::UDiv
      || inst->getOpcode() == Instruction::SDiv
      || isa<CastInst>(inst)) {
        
        for(User *U: inst->users()) {   // !!!!!!!!!!!!!!!!!!! i is what?? without consider... and ! the first call can add judgement
          if(Instruction *i = dyn_cast<Instruction>(U)) {
            // one operand
            if(i->getNumOperands() == 1) {
              return compVal(idx, i, 0, value, level);
            }
            // two operands
            if(i->getNumOperands() == 2) {
              Value *op0 = i->getOperand(0);
              Value *op1 = i->getOperand(1);
              // op0 = inst
              if(Instruction *op = dyn_cast<Instruction>(op0)) {
                if(op->isIdenticalTo(inst)) {
                  return compVal(idx, i, 0, value, level);
                }
                else {
                  return compVal(idx, i, 1, value, level);
                }
              }
              else {
                return compVal(idx, i, 1, value, level);
              }
            } 
            // other cases
            return -100;                
          }
        }
      }     
      else
        return -100;
    }          

    // compute the index value
    int compIdx(Module &M, KList kList[], int kid, Value *v) {

      if(ConstantInt *c = dyn_cast<ConstantInt>(v))
        return c->getSExtValue();

      Instruction *idx = dyn_cast<Instruction>(v);

      // find the name of args regarding to #WG
      std::string valName[10];
      int k = -1;
      for(Module::iterator f = M.begin(), f2 = M.end(); f!=f2; f++) { // functions
        if(f->getCallingConv() == 76) {
          k++;
          if(k == kid) {
            int aid = -1;
            for(Function::arg_iterator a = f->arg_begin(), e = f->arg_end(); a != e; a++) { // all args in this kernel
              aid++;
              for(int i = 0; i < kList[k].argcnt; i++) {  // traverse all #WG-related args
                if(aid == kList[k].arg[i]) {
                  valName[i] = a->getName();
                }
              }
            }
          }        
        }
      }

      k = -1;
      for(Module::iterator f = M.begin(), f2 = M.end(); f!=f2; f++) { // functions
        if(f->getCallingConv() == 76) {
          k++;
          if(k == kid) {  // find the kernel
            for(Function::iterator bb = f->begin(), e = f->end(); bb!=e; bb++) {  // all basic blocks
              for(BasicBlock::iterator i = bb->begin(), i2 = bb->end(); i!=i2; i++) { // all instructions
                
                // part 1
                Instruction *inst = dyn_cast<Instruction>(i);
                std::string si = formatv("{0}",*i).str();
                for(int i = 0; i < kList[k].argcnt; i++) {
                  if(si.find(valName[i]) != std::string::npos) {
                    //errs() << "find inst related to #wg arg: " << *inst << '\n'; 
                    int pos; 
                    int val;
                    // one operand
                    if(inst->getNumOperands() == 1) {
                      val = compVal(idx, inst, 0, kList[k].argval[i], 0);
                    }
                    // two operands
                    if(inst->getNumOperands() == 2) {
                      Value *v0 = inst->getOperand(0);
                      Value *v1 = inst->getOperand(1);       
                      std::string s0 = formatv("{0}",*v0).str();
                      std::string s1 = formatv("{0}",*v1).str();
                      if(s0.find(valName[i]) != std::string::npos)
                        pos = 0;
                      else if(s1.find(valName[i]) != std::string::npos)
                        pos = 1;
                      else
                        continue;
                      val = compVal(idx, inst, pos, kList[k].argval[i], 0);
                    }              

                    if(val >= 0)
                      return val;
                  }
                }

                // part 2
                if(CallInst *cinst = dyn_cast<CallInst>(i)) {                  
                  if(cinst->getCalledFunction()->getName().find("get_group_id") != std::string::npos) {	// get the function called
                    //errs() << "find call: " << *cinst << '\n';
                    int val = compVal(idx, cinst, 0, 0);
                    if(val >= 0)
                      return val;
                  }
                  if(cinst->getCalledFunction()->getName().find("get_num_group") != std::string::npos) {	// get the function called
                    //errs() << "find call: " << *cinst << '\n';
                    int val = compVal(idx, cinst, 0, 0);
                    if(val >= 0)
                      return val;
                  }
                }
              }
            }
          }                          
        }
      }
      return -100;
    }

    bool isLoop(BasicBlock *pbb, BasicBlock *bb, int level) { 

      if(level > 2)
        return false;
      // 2.2.1. is itself
      if(pbb == bb)
        return true;
      bool ret = false;
      for(succ_iterator s = succ_begin(bb), e = succ_end(bb); s!=e; s++) {  // for all successors
        BasicBlock *sbb = dyn_cast<BasicBlock>(*s);
        ret = ret | isLoop(pbb, sbb, level+1);
      }
      // 2.2.2. is its successor
      // 2.2.3. is its successor's successor
      return ret;
    }

    void testBB(BasicBlock *tbb, BasicBlock *pbb, KList kList[], int pos) {
      
      // 1. testbb should be Y now
      int bbpos = getBBPos(kList, pos, tbb);  // find testbb's position
      if(kList[pos].bbList[bbpos].keep) {     // find testbb's situation
        // 2.1. testbb has only one predecessor
        if(tbb->hasNPredecessors(1)) {         
          kList[pos].bbList[bbpos].keep = false;  //errs() << "delete: " << tbb->getName() << '\n'; 
          // delete testbb then handle its succs        
          for(succ_iterator s = succ_begin(tbb), e = succ_end(tbb); s!=e; s++) {
            BasicBlock *dest = dyn_cast <BasicBlock>(*s);
            testBB(dest, tbb, kList, pos);
          }
        }
        // 2.2. testbb has two predecessors
        else  {
          for(pred_iterator p = pred_begin(tbb), e = pred_end(tbb); p!=e; p++) {           
            BasicBlock *prebb = dyn_cast<BasicBlock>(*p); //errs() << "preds: " << **p << '\n';errs() << "preds: " << prebb->getName() << '\n';          
            if(prebb != pbb) {  // find the another predecessor
              // test for the another predecessor: we can handle 3-nested loops (branches)
              if(isLoop(prebb, tbb, 0)) {             
                kList[pos].bbList[bbpos].keep = false;  //errs() << "delete: " << tbb->getName() << '\n';              
                for(succ_iterator s = succ_begin(tbb), e = succ_end(tbb); s!=e; s++) {
                  BasicBlock *dest = dyn_cast <BasicBlock>(*s);
                  testBB(dest, tbb, kList, pos);
                }
              }
            }
          }
        }
      }
    }

    // find the gep inst related to global value in case C2 part 2
    Value* findGEP(Module &M, int kid, Value* gv) {

      int k = -1;
      for(Module::iterator f = M.begin(), f2 = M.end(); f!=f2; f++) { // functions
        if(f->getCallingConv() == 76) {
          k++;
          if(k == kid) {  // find the kernel
            for(Function::iterator bb = f->begin(), e = f->end(); bb!=e; bb++) {  // all basic blocks
              for(BasicBlock::iterator i = bb->begin(), i2 = bb->end(); i!=i2; i++) { // all instructions
                Instruction *sinst = dyn_cast<Instruction>(i);
                std::string si = formatv("{0}",*i).str();
                if(si.find(gv->getName()) != std::string::npos
                && sinst->getOpcode() == Instruction::Store) {  // store inst that regarding to the local array 
                  //errs() << "find gv store inst: " << *sinst << '\n';
                  if(Instruction *src = dyn_cast<Instruction>(sinst->getOperand(0))) {
                    //errs() << "src: " << *src << '\n'; 
                    Instruction *gep;
                    Instruction *i2 = src;
                    bool stop = false;  // until find gep inst
                    while(!stop) {
                      if(i2->getOpcode() == Instruction::GetElementPtr) {
                        stop = true;
                        gep = i2;
                      }
                      else if(i2->getOpcode() == Instruction::Load) {
                        if(Instruction *i = dyn_cast<Instruction>(i2->getOperand(0))) {
                          i2 = i;
                        }
                      }
                      else  // do not consider
                        return gv;
                    } //errs() << "gep: " << *gep << '\n';
                    return gep;
                  }
                }
              }
            }
          }                          
        }
      }
      return gv;
    }

    // get the value from producer kernel
    int compPreK(Module &M, KList kList[], int kid, int aid, int idx) {

      int k = -1;
      for(Module::iterator f = M.begin(), f2 = M.end(); f!=f2; f++) { // functions
        if(f->getCallingConv() == 76) {
          k++;
          if(k == kid) {  // find the kernel
            int acnt = -1;
            for(Function::arg_iterator a = f->arg_begin(), e = f->arg_end(); a != e; a++) {
              acnt++;
              if(acnt == aid) { // find the arg
                int lacnt = 0;
                Value *la[4];
                for(Function::iterator bb = f->begin(), e = f->end(); bb!=e; bb++) {  // all basic blocks
                  for(BasicBlock::iterator i = bb->begin(), i2 = bb->end(); i!=i2; i++) { // all instructions
                    Instruction *inst = dyn_cast<Instruction>(i);
                    std::string si = formatv("{0}",*i).str();
                    if(si.find(a->getName()) != std::string::npos) {  // inst that regarding to the arg 
                      // the arg in prek is a store operation, so consider one fix pattern
                      //errs() << "inst: " << *inst << '\n';
                      if(inst->getOpcode() == Instruction::GetElementPtr) {
                        Instruction *i2 = inst;
                        while(i2->getOpcode() != Instruction::Store) {  // until find a store inst
                          for(User *U: i2->users()) {
                            //errs() << "used in: " << *U << '\n';
                            if(Instruction *inst = dyn_cast<Instruction>(U)) {
                              i2 = inst;
                            }
                          }
                        }
                        //errs() << "final store: " << *i2 << '\n';
                        Value *v = i2->getOperand(0);
                        if(ConstantInt *c = dyn_cast<ConstantInt>(v)) { // a constant
                          return c->getSExtValue();
                        }
                        if(Instruction *linst = dyn_cast<Instruction>(v)) { // a local array
                          Value *v = linst->getOperand(0);
                          if(Instruction *gep = dyn_cast<Instruction>(v)) {
                            if(gep->getOpcode() == Instruction::GetElementPtr) {
                              Value *v = gep->getOperand(0);
                              if(isa<GlobalValue>(v)) {
                                //errs() << "local array: " << *v << '\n';
                                la[lacnt] = v;
                                lacnt++;
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
                
                if(lacnt != 0) {  // find the local array
                  Value *vla = la[0];
                  for(int i = 0; i < lacnt; i++) {
                    if(vla != la[i])  return -100;
                  }
                  //errs() << "local array: " << *vla << '\n';
                  for(Function::iterator bb = f->begin(), e = f->end(); bb!=e; bb++) {  // all basic blocks
                    for(BasicBlock::iterator i = bb->begin(), i2 = bb->end(); i!=i2; i++) { // all instructions
                      std::string sinst = formatv("{0}",*i).str();
                      if(sinst.find(vla->getName()) != std::string::npos) {  // all insts that regarding to the local array 
                        //errs() << "find gv inst: " << *i << '\n';                      
                        Instruction *gvi = dyn_cast<Instruction>(i);
                        // to find all args for this kernel
                        std::string sarg[10];
                        int acnt = 0;
                        for(Function::arg_iterator a = f->arg_begin(), e = f->arg_end(); a != e; a++) { 
                          //errs() << "arg:" << *a << '\n';                                  
                          sarg[acnt++] = formatv("{0}", *a).str();
                        }
                        // find a comp inst that can execute: this buff is required
                        if(canExecute(gvi, kList, kid) && isCompInst(gvi, sarg, acnt)) {
                          //errs() << "find!!!!" << *gvi << '\n';
                          if(gvi->getOpcode() == Instruction::GetElementPtr) {
                            Value *vidx = gvi->getOperand(2);
                            //errs() << "compute idx from: " << *vidx << '\n';
                            int index = compIdx(M, kList, kid, vidx);
                            //errs() << "compute idx: " << index << '\n';
                            if(index == idx) {  // the required gvi's index is satisfied
                              Instruction *i2 = gvi;
                              while(i2->getOpcode() != Instruction::Store) {  // until find a store inst
                                for(User *U: i2->users()) {
                                  //errs() << "used in: " << *U << '\n';
                                  if(Instruction *inst = dyn_cast<Instruction>(U)) {
                                    i2 = inst;
                                  }
                                }
                              }
                              //errs() << "now find store: " << *i2 << '\n';
                              Value *v = i2->getOperand(0);
                              if(ConstantInt *c = dyn_cast<ConstantInt>(v)) {
                                return c->getSExtValue();
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
      } 
      return -100;
    }
    
    bool isNotEqual(Module &M, KList kList[], int conn[][4], int conncnt, int kid, Instruction *inst, int idx, int val) {

      Value *v = inst->getOperand(idx);
      if(isa<Constant>(v)) {  // is a constant
        ConstantInt *cv = dyn_cast<ConstantInt>(v);
        if(cv->getSExtValue() == val) return false; // is equal...
        else                          return true;
      }
      else if(Instruction *i = dyn_cast<Instruction>(v)) {
        //errs() << "comp inst: " << *i << '\n';
        // limitation... only can handle one variable
        if(i->getOpcode() == Instruction::Load) {
          Value *v = i->getOperand(0);
          if(isa<GlobalValue>(v))
          {
            //errs() << "gv: " << v->getName() << '\n';
            Value *resv = findGEP(M, kid, v);
            if(!isa<Instruction>(resv)) // if not find gep inst, then get v itself: not an inst
              return true;
            else {
              //errs() << "return gep: " << *resv << '\n'; 
              Instruction *gep = dyn_cast<Instruction>(resv);
              Value *arr = gep->getOperand(0);  //errs() << "arr: " << *arr << '\n';
              Value *idx = gep->getOperand(1);  //errs() << "idx: " << *idx << '\n';
              int aid = getArgPos(M, kid, arr); //errs() << "pos: " << pos << '\n';
              if(aid != -1) { // is an arg of this kernel
                // 1. it is an arg related to #WG: get its ArgVal and compare
                int argVal = getArgVal(kList, kid, aid);
                if(argVal != -1) {
                  if(argVal == val) return false;
                  else              return true;
                }
                // 2. it is not an arg related to #WG
                // test whether it is a buffer and is in conn
                // not in: return
                // in: get kid and aid in pre kernel
                int prek = -1;
                int prea = -1;
                for(int i = 0; i < conncnt; i++) {
                  if(conn[i][2] == kid && conn[i][3] == aid) {
                    prek = conn[i][0];
                    prea = conn[i][1];
                    break;
                  }
                }
                if(prek == -1) 
                  return true;
                //errs() << "pre k and a: " << prek << ',' << prea << '\n';
                // 3. obtain the index
                int index = compIdx(M, kList, kid, idx);
                if(index >= 0)
                {
                  int resVal = compPreK(M, kList, prek, prea, index);
                  if(resVal == val) return false;
                  else              return true;
                }
              }
            }
          }
        }
      }
      return true;
    }
    
    bool isRequired(Module &M, KList kList[], int conn[][4], int conncnt, int kid, Instruction *inst, int idx) {

      //errs() << "test isrequired: " << *inst << '\n';
      switch(inst->getOpcode()) {
        case Instruction::Add:
          return isNotEqual(M, kList, conn, conncnt, kid, inst, idx, 0);       
        case Instruction::Mul:
          return isNotEqual(M, kList, conn, conncnt, kid, inst, idx, 1);          
        case Instruction::LShr:
        case Instruction::AShr:
        case Instruction::Shl:
        case Instruction::Sub: {
          if(idx == 0)  return true;
          else          return isNotEqual(M, kList, conn, conncnt, kid, inst, idx, 0);
        }             
        case Instruction::UDiv:
        case Instruction::SDiv: {
          if(idx == 0)  return true;
          else          return isNotEqual(M, kList, conn, conncnt, kid, inst, idx, 1);
        }       
        default:  
          return true;
      }
    }
    
    bool runOnModule(Module &M) override {

      // 1. we need kcnt from NumOfKernels.out
      // kcnt: number of kernels
      int kcnt; 
      KList kList[10];
      std::string app = APP;
      std::string file = "/root/Work/llvm/apps/" + app + "/NumOfKernels.out";
      std::ifstream fin(file);
      char line[20];
      fin.getline(line, sizeof(line));
      std::stringstream ssx(line);
      ssx >> kcnt;  

      for(int i = 0; i < kcnt; i++) {
        kList[i].ibuffcnt = 0;
        kList[i].argcnt = 0;
      }  
      
      // 2. we need __ kernel's __ arg = __ from VarBuffInHost.out
      int wgacnt;
      bool arg;
      file = "/root/Work/llvm/apps/" + app + "/VarBuffInHost.out";
      std::ifstream fin2(file);
      fin2.getline(line, sizeof(line));
      std::stringstream ssa(line);
      int tmpk;
      ssa >> wgacnt;  // the number of args regarding to #wg
      if(wgacnt > 0) {  // has such args
        arg = true;
        int i = 0;
        while(i < wgacnt) { // get all args
          fin2.getline(line, sizeof(line));
          std::stringstream sswg(line);
          sswg >> tmpk;
          sswg >> kList[tmpk].arg[kList[tmpk].argcnt];
          sswg >> kList[tmpk].argval[kList[tmpk].argcnt];
          kList[tmpk].argcnt++;
          i++;
        }
      }
      else {
        arg = false;
      }

      // 3. we need __ kernel's __ arg's buffer size = 1 from VarBuffInHost.out
      // buffs[..][0]: kernel id
      // buffs[..][1]: arg id
      int buffscnt = 0;
      int buffs[10][2];
      fin2.getline(line, sizeof(line));
      std::stringstream ssbuff(line);
      ssbuff >> buffscnt;  
      while(fin2.getline(line, sizeof(line))) {
        std::stringstream ssb(line);
        ssb >> buffs[buffscnt][0];
        ssb >> buffs[buffscnt][1];
        buffscnt++;
      }

      // 4. we need __ kernel's __ buffer objects from IsSequential.out
      // and the connection between two kernels
      int conncnt = 0;
      int conn[10][4];
      file = "/root/Work/llvm/apps/" + app + "/IsSequential.out";
      std::ifstream fin3(file);
      fin3.getline(line, sizeof(line));
      while(fin3.getline(line, sizeof(line))) {
        std::stringstream ssbu(line);
        ssbu >> conn[conncnt][0];
        ssbu >> conn[conncnt][1];
        ssbu >> conn[conncnt][2];
        ssbu >> conn[conncnt][3];
        tmpk = conn[conncnt][2];
        kList[tmpk].ibuff[kList[tmpk].ibuffcnt] = conn[conncnt][3];
        kList[tmpk].req[kList[tmpk].ibuffcnt] = 0;
        kList[tmpk].ibuffcnt++;
        conncnt++;
      }
      /*
      for(int i = 0; i < kcnt; i++) {
        errs() << "kid: " << i << '\n';
        for(int j = 0; j < kList[i].ibuffcnt; j++) {
          errs() << kList[i].ibuff[j] << '\n';
        }
      }
      */
      // list all bb
      int k = -1;
      for(Module::iterator f = M.begin(), f2 = M.end(); f!=f2; f++) { // functions
        if(f->getCallingConv() == 76) {
          k++;
          kList[k].bbcnt = 0;
          for(Function::iterator bb = f->begin(), e = f->end(); bb!=e; bb++) {  // basic blocks
            BasicBlock *bbtmp = dyn_cast<BasicBlock>(bb); //errs() << bbtmp->getName() << '\n';            
            kList[k].bbList[kList[k].bbcnt].bb = bbtmp;
            kList[k].bbList[kList[k].bbcnt].name = bbtmp->getName();
            kList[k].bbList[kList[k].bbcnt].keep = true;
            kList[k].bbcnt++;
          }
        }
      }
/*
      for(int i = 0; i < kcnt; i++) {
        errs() << "kid: " << i << '\n';
        for(int j = 0; j < kList[i].bbcnt; j++) {
          errs() << "bb: " << kList[i].bbList[j].name << '\n';
        } 
      }
*/
      // list all insts regarding to intermediate buffer objects
      int kid = -1;
      for(Module::iterator f = M.begin(), f2 = M.end(); f!=f2; f++) { // functions
        if(f->getCallingConv() == 76) {
          kid++;
          int aid = -1;
          for(Function::arg_iterator a = f->arg_begin(), e = f->arg_end(); a != e; a++) {
            aid++;  //errs() << "kid: " << kid << ' ' << "aid: " << aid << '\n';
            // if (kid, aid) is in ibuff
            int bpos = getBuffPos(kList, kid, aid); //errs() << "bpos: " << bpos << '\n';
            if(bpos != -1) {        
              kList[kid].instList[bpos].icnt = 0;     
              std::string sa = formatv("{0}", *a).str();  //errs() << "arg:" << *a << '\n';
              for(Function::iterator bb = f->begin(), e = f->end(); bb!=e; bb++) {  // all basic blocks
                for(BasicBlock::iterator i = bb->begin(), i2 = bb->end(); i!=i2; i++) { // all instructions
                  std::string si = formatv("{0}", *i).str();
                  if(si.find(sa) != std::string::npos) {  // find the related insts
                    Instruction *inst = dyn_cast<Instruction>(i); //errs() << "inst: " << *i << '\n'; 
                    kList[kid].instList[bpos].inst[kList[kid].instList[bpos].icnt] = inst;
                    kList[kid].instList[bpos].exec[kList[kid].instList[bpos].icnt] = 0;
                    kList[kid].instList[bpos].icnt++;
                  }
                }
              }
            }
          }
        }
      }
/*
      for(int i = 0; i < kcnt; i++) {
        errs() << "kid: " << i << '\n';
        for(int j = 0; j < kList[i].ibuffcnt; j++) {
          errs() << "ibuff: " << kList[i].ibuff[j] << '\n';
          for(int k = 0; k < kList[i].instList[j].icnt; k++) {
            errs() << "inst: " << *kList[i].instList[j].inst[k] << '\n';
            errs() << "exec: " << kList[i].instList[j].exec[k] << '\n';
          }
        }
      }
*/
      // pre step: test whether each bb is required under assumption
      if(arg) {
        int k = -1;
        for(Module::iterator f = M.begin(), f2 = M.end(); f!=f2; f++) { // functions
          if(f->getCallingConv() == 76) {
            k++;
            int acnt = -1;
            for(Function::arg_iterator a = f->arg_begin(), e = f->arg_end(); a != e; a++) {
              acnt++;
              // if (k, acnt) is args regarding to #wg: get its value
              int value = getArgVal(kList, k, acnt);
              if(value != -1)  {
                //errs() << a->getName() << '\n';            
                for(Function::iterator bb = f->begin(), e = f->end(); bb!=e; bb++) {  // all basic blocks
                  for(BasicBlock::iterator i = bb->begin(), i2 = bb->end(); i!=i2; i++) { // all instructions
                    std::string si = formatv("{0}",*i).str();
                    if(si.find(a->getName()) != std::string::npos) {  // find the related instructions
                      Instruction *inst = dyn_cast<Instruction>(i); //errs() << "inst: " << *i << '\n';
                      BasicBlock *ibb = inst->getParent();
                      if(canExecute(inst, kList, k)) {
                        int res = compLastVal(ibb, inst, a->getName(), value); //errs() << "parent bb: " << kList[k].bbList[bbpos].name << '\n';//errs() << "result value: " << res << '\n';                      
                        // valid result
                        if(res != -100) {
                          Instruction *last_inst = ibb->getTerminator();
                          if(BranchInst *br_inst = dyn_cast<BranchInst>(last_inst)) {
                            // this inst needs to be considered only when it leads to a definite branch
                            // it should be a conditional branch
                            if(br_inst->isConditional()) {
                              BasicBlock *dest; //errs() << "br: " << *br_inst << '\n';                             
                              if(res == 1)      dest = br_inst->getSuccessor(1);
                              else if(res == 0) dest = br_inst->getSuccessor(0);
                              //errs() << "handle: " << dest->getName() << '\n';
                              testBB(dest, ibb, kList, k);
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
      /*
      for(int i = 0; i < kcnt; i++) { 
        errs() << i << '\n';       
        int y = 0;
        int n = 0;
        for(int j = 0; j < kList[i].bbcnt; j++) { 
          errs() << "bb: " << kList[i].bbList[j].name << ":\t";         
          if(kList[i].bbList[j].keep) {           
            y++;  
            errs() << "y\n";
          }
          else {           
            n++;  
            errs() << "n\n";
          }
        }
      }
      */
      // case C1
      for(int i = 0; i < kcnt; i++) {
        for(int j = 0; j < kList[i].ibuffcnt; j++) {  // all buffs required testing
          for(int k = 0; k < buffscnt; k++) {
            if(i == buffs[k][0] && kList[i].ibuff[j] == buffs[k][1]) {
              kList[i].req[j] = 1;
              for(int m = 0; m < kList[i].instList[j].icnt; m++) {
                kList[i].instList[j].exec[m] = 1;
              }
              break;
            }
          }         
        }
      }  

      // case C2
      for(int i = 0; i < kcnt; i++) { // all kernels
        for(int j = 0; j < kList[i].ibuffcnt; j++) {  // all intermediate buffer objects
          if(kList[i].req[j] == 0) {  // need to test
            for(int k = 0; k < kList[i].instList[j].icnt; k++) {  // all insts regarding to the buffer
              
              // part 1
              if(arg) {
                // inst is in bb that can be deleted: inst is not required
                if(!canExecute(kList[i].instList[j].inst[k], kList, i)) {
                  kList[i].instList[j].exec[k] = 2;
                }
                // otherwise: test whether the buffer is related to a local array
                else {
                  if(kList[i].instList[j].inst[k]->getOpcode() == Instruction::GetElementPtr) {
                    //errs() << "gep: " <<*kList[i].instList[j].inst[k] << '\n';
                    Instruction *i2 = kList[i].instList[j].inst[k];
                    Instruction *i0 = kList[i].instList[j].inst[k];
                    while(i2->getOpcode() != Instruction::Store) {  // until find a store inst
                      for(User *U: i2->users()) {
                        //errs() << "used in: " << *U << '\n';
                        if(Instruction *inst = dyn_cast<Instruction>(U)) {
                          i0 = i2;
                          i2 = inst;
                        }
                      }
                    }
                    //errs() << "finally store: " << *i2 << '\n';
                    // get the two operands of the store inst
                    Value *la0 = i2->getOperand(0);
                    Value *la1 = i2->getOperand(1);
                    Instruction *ila0 = dyn_cast<Instruction>(la0);
                    Instruction *ila1 = dyn_cast<Instruction>(la1);
                    // find the other operand to test
                    Value *la = (i0 == ila0) ? la1 : la0; //errs() << "operand: " << *la << '\n'; 
                    std::string sla;
                    bool findGV = false;  // init
                    // the operand is a gv
                    if(isa<GlobalValue>(la)) {
                      findGV = true;
                      sla = la->getName();  //sla = formatv("{0}",*la).str();
                    }
                    // or the opreand contains a gv
                    else if(GetElementPtrInst *ila = dyn_cast<GetElementPtrInst>(la)) {
                      Value *vla = ila->getOperand(0);  //errs() << "test!! " << *vla << '\n';                         
                      if(isa<GlobalValue>(vla)) {                            
                        findGV = true;  //errs() << "yes!!\n";                           
                        sla = vla->getName(); //sla = formatv("{0}", *vla).str();
                      }  
                    }
                    if(findGV) {  // test the local array
                      int kid = -1;
                      bool ret = true;  // init
                      for(Module::iterator f = M.begin(), f2 = M.end(); f!=f2; f++) { // functions
                        if(f->getCallingConv() == 76) {
                          kid++;
                          if(kid == i) {  // find the kernel
                            for(Function::iterator bb = f->begin(), e = f->end(); bb!=e; bb++) {  // all basic blocks
                              for(BasicBlock::iterator i = bb->begin(), i2 = bb->end(); i!=i2; i++) { // all instructions
                                //errs() << "inst: " << *i << '\n';                              
                                std::string sinst = formatv("{0}",*i).str();
                                if(sinst.find(sla) != std::string::npos) {  // all insts that regarding to the local array 
                                  //errs() << "find gv inst: " << *i << '\n';                      
                                  Instruction *gvi = dyn_cast<Instruction>(i);
                                  // to find all args for this kernel
                                  std::string sarg[10];
                                  int acnt = 0;
                                  for(Function::arg_iterator a = f->arg_begin(), e = f->arg_end(); a != e; a++) { 
                                    //errs() << "arg:" << *a << '\n';                                  
                                    sarg[acnt++] = formatv("{0}", *a).str();
                                  }
                                  // find a comp inst that can execute: this buff is required
                                  if(canExecute(gvi, kList, kid) && isCompInst(gvi, sarg, acnt)) {
                                    ret = false;
                                    break;  // we do not need to test other related inst
                                  }
                                }
                              }
                            }
                          }                          
                        }
                      }
                      if(ret) {
                        kList[i].instList[j].exec[k] = 2;
                      }
                    }
                  }
                }
              }              

              // part 2
              // this inst is not satisfy C1 and C2.1
              if(kList[i].instList[j].exec[k] == 0) {
                if(isa<GetElementPtrInst>(kList[i].instList[j].inst[k])) {
                  //errs() << "gep: " << *kList[i].instList[j].inst[k] << '\n';
                  for(User *U: kList[i].instList[j].inst[k]->users()) {
                    if(Instruction *linst = dyn_cast<Instruction>(U)) {
                      if(linst->getOpcode() == Instruction::Load) { 
                        //errs() << "load: " << *linst << '\n';              
                        Instruction *i2 = linst;
                        Instruction *i0 = linst;
                        Instruction *compi = linst;
                        int opidx = -1;
                        int cnt = 0;
                        while(i2->getOpcode() != Instruction::Store) {  // until find the store inst
                          cnt++;
                          if(cnt > 10)  // more than 10 iterations, stop
                            break;
                          for(User *U: i2->users()) { 
                            //errs() << "used in: " << *U << '\n';                                           
                            if(Instruction *i = dyn_cast<Instruction>(U)) {
                              i0 = i2;
                              i2 = i;
                              // find the computing part
                              switch(i2->getOpcode()) {
                                case Instruction::LShr:
                                case Instruction::AShr:
                                case Instruction::Shl:
                                case Instruction::Add:
                                case Instruction::Sub:
                                case Instruction::Mul:
                                case Instruction::UDiv:
                                case Instruction::SDiv: {                                     
                                  compi = i2; //errs() << "comp~\n";
                                  // find which operand is the former inst and record the other one
                                  Value *v0 = i2->getOperand(0);
                                  Value *v1 = i2->getOperand(1);
                                  if(Instruction *iv0 = dyn_cast<Instruction>(v0)) {                                   
                                    if(iv0 == i0) opidx = 1;  // operand 0 is the former inst
                                    else          opidx = 0;
                                  }
                                  else {
                                    opidx = 1;
                                  } //errs() << "idx: " << opidx << '\n';                                   
                                  break;
                                }       
                              } 
                            }
                          }
                        } 
                        
                        if(i2->getOpcode() == Instruction::Store) {
                          //errs() << "finally store: " << *i2 << '\n';                
                          // the 2nd operand
                          Value *v = i2->getOperand(1);
                          if(Instruction *op1 = dyn_cast<Instruction>(v)) {                            
                            if(op1 == kList[i].instList[j].inst[k]      // update the original location
                            && compi->getOpcode() != Instruction::Load  // have a computing inst
                            && opidx != -1) {                           // obtain a operand index
                              if(!isRequired(M, kList, conn, conncnt, i, compi, opidx)) { // not required
                                kList[i].instList[j].exec[k] = 2;
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
      }

      // post processing: if all insts are satisfied, the buffer is satisfied
      for(int i = 0; i < kcnt; i++) {
        for(int j = 0; j < kList[i].ibuffcnt; j++) {
          bool res = true;
          for(int k = 0; k < kList[i].instList[j].icnt; k++) {
            if(kList[i].instList[j].exec[k] == 0) {
              res = false;
              break;
            }
          }
          if(res) {
            kList[i].req[j] = 1;
          }
        }
      }
      /*
      for(int i = 0; i < kcnt; i++) {
        errs() << "kid: " << i << '\n';
        for(int j = 0; j < kList[i].ibuffcnt; j++) {
          errs() << "ibuff: " << kList[i].ibuff[j] << '\n';
          for(int k = 0; k < kList[i].instList[j].icnt; k++) {
            errs() << "inst: " << *kList[i].instList[j].inst[k] << '\n';
            errs() << "exec: " << kList[i].instList[j].exec[k] << '\n';
          }
        }
      }
      
      for(int i = 0; i < kcnt; i++) {
        errs() << "kid: " << i << '\n';
        for(int j = 0; j < kList[i].ibuffcnt; j++) {
          errs() << kList[i].ibuff[j] << ' ' << kList[i].req[j] << '\n';
        }
      }
      */
      bool res = true;
      for(int i = 0; i < kcnt; i++) {
        for(int j = 0; j < kList[i].ibuffcnt; j++) {
          if(kList[i].req[j] != 1) {
            res = false;
          }
        }
      }
      if(res) {
        errs() << "\t\tYes\n";
			  errs() << "1\n";
      }
      else {
        errs() << "\t\tNo\n";
			  errs() << "0\n";
      }

      return false;
    }
  };
}

char VarBuffInKernel::ID = 0;
static RegisterPass<VarBuffInKernel> X("varbuffinkernel", "find multi-pass scheme",
                             false /* Only looks at CFG */,
                             false /* Analysis Pass */);
