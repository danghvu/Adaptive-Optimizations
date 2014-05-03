//===- DCE.cpp - Code to perform dead code elimination --------------------===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//
//
// This file implements the Aggressive Dead Code Elimination pass.  This pass
// optimistically assumes that all instructions are dead until proven otherwise,
// allowing it to eliminate dead computations that other DCE passes do not
// catch, particularly involving loop computations.
//
//===----------------------------------------------------------------------===//

#define DEBUG_TYPE "jitfprofiling"
// this name is used when -stats is used

#include "llvm/ExecutionEngine/ExecutionEngine.h"
#include "llvm/ExecutionEngine/JITProfileData.h"
#include "llvm/ADT/DepthFirstIterator.h"
#include "llvm/ADT/SmallVector.h"
#include "llvm/ADT/Statistic.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/IntrinsicInst.h"
#include "llvm/Pass.h"
#include "llvm/Support/CFG.h"
#include "llvm/Support/InstIterator.h"
#include "llvm/Support/Debug.h"
#include "llvm/Support/raw_ostream.h"
#include <stdio.h>
#include <string>
#include <functional>

using namespace llvm;

STATISTIC(numInsertedCallbackFunc, "Number of inserted function profiling callback");

namespace {
  void* JITFunctionCallback(JITProfileData* JPD, Function* Func) {
    return JPD->FunctionCallback(Func);
  }

  class JITFunctionProfiling : public FunctionPass {

    public:
      static char ID;
      JITFunctionProfiling() : FunctionPass(ID) {};
      JITFunctionProfiling(JITProfileData* _JPD) : FunctionPass(ID) {
        JPD = _JPD;
      }

      ~JITFunctionProfiling() {
        for (SmallVector<Instruction*, 8>::iterator II = callBackInst.begin();
            II != callBackInst.end(); ++II) {
          DEBUG( dbgs() << "[Function Profiling] Deleting.. " << *II << "\n" );
          (*II)->eraseFromParent();
        }
        callBackInst.clear();
      }

      virtual void getAnalysisUsage(AnalysisUsage& AU) const {}

      virtual bool runOnFunction(Function &F) {
        numInsertedCallbackFunc++;

        // Create a pointer type of size sizeof(void*)
        PointerType* VoidPointerTy = PointerType::get(IntegerType::get(F.getContext(), CHAR_BIT), 0);

        //  Create a vector of the argument types
        std::vector<Type*> FunctionArgsTy;
        FunctionArgsTy.push_back(VoidPointerTy);
        FunctionArgsTy.push_back(VoidPointerTy);

        // Create the function type: PointerTy func(PointerTy, PointerTy)
        FunctionType* FunctionTy = FunctionType::get(VoidPointerTy, FunctionArgsTy, false);

        // Create the function-pointer type
        PointerType* FunctionPtrTy = PointerType::get(FunctionTy, 0);

        // Insert the inttoptr instructions for the function callback and this function pass
        // (both never change)
        intptr_t FP     = reinterpret_cast<intptr_t>(JITFunctionCallback);
        intptr_t JPDObj = reinterpret_cast<intptr_t>(JPD);
        intptr_t Func   = reinterpret_cast<intptr_t>(&F);

        Value* CallbackVal = ConstantInt::get(IntegerType::get(F.getContext(), sizeof(intptr_t)*CHAR_BIT), APInt(sizeof(intptr_t)*CHAR_BIT, FP));
        Value* JPDVal      = ConstantInt::get(IntegerType::get(F.getContext(), sizeof(intptr_t)*CHAR_BIT), APInt(sizeof(intptr_t)*CHAR_BIT, JPDObj));
        Value* FuncVal     = ConstantInt::get(IntegerType::get(F.getContext(), sizeof(intptr_t)*CHAR_BIT), APInt(sizeof(intptr_t)*CHAR_BIT, Func));

        IntToPtrInst* CallbackInst = new IntToPtrInst(CallbackVal, FunctionPtrTy);
        IntToPtrInst* JPDInst      = new IntToPtrInst(JPDVal, VoidPointerTy);
        IntToPtrInst* FuncInst     = new IntToPtrInst(FuncVal, VoidPointerTy);

        // Make the function call
        std::vector<Value*> ArrayRefVec;
        ArrayRefVec.push_back(JPDInst);
        ArrayRefVec.push_back(FuncInst);
        CallInst* FuncCall = CallInst::Create(CallbackInst, ArrayRef<Value*>(ArrayRefVec));

        // Insert the instructions
        F.getEntryBlock().getInstList().push_front(FuncCall);
        F.getEntryBlock().getInstList().push_front(FuncInst);
        F.getEntryBlock().getInstList().push_front(JPDInst);
        F.getEntryBlock().getInstList().push_front(CallbackInst);

        callBackInst.push_back(FuncCall);
        callBackInst.push_back(FuncInst);
        callBackInst.push_back(JPDInst);
        callBackInst.push_back(CallbackInst);

        DEBUG( dbgs() << "[JITProfiling] Inserted Callback to " << F.getName() << "\n" );
        return true;
      }

    private:
      JITProfileData* JPD;
      SmallVector<Instruction*, 8>  callBackInst;
  };
}

char JITFunctionProfiling::ID = 0;
static RegisterPass<JITFunctionProfiling> XXX("jitfprofilingpass", "Add/remove instruction for JIT online profiling of function", false, false);

namespace llvm {
  FunctionPass *createJITFunctionProfilingPass(JITProfileData* JPD) { return new JITFunctionProfiling(JPD); }
}
