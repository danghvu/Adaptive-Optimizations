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

#include "JITProfiling.h"
#include "llvm/ExecutionEngine/ExecutionEngine.h"
#include "llvm/ExecutionEngine/OnlineProfileData.h"
#include "llvm/Transforms/IPO.h"
#include "llvm/Transforms/Utils/UnifyFunctionExitNodes.h"
#include "llvm/Transforms/Utils/LoopUtils.h"
#include "llvm/Transforms/IPO.h"
#include "llvm/Analysis/LoopInfo.h"
#include "llvm/Analysis/LoopPass.h"
#include "llvm/ADT/DepthFirstIterator.h"
#include "llvm/ADT/SmallPtrSet.h"
#include "llvm/ADT/SetVector.h"
#include "llvm/ADT/SmallVector.h"
#include "llvm/ADT/Statistic.h"
#include "llvm/ADT/DenseMap.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/IntrinsicInst.h"
#include "llvm/Pass.h"
#include "llvm/Support/CFG.h"
#include "llvm/Support/InstIterator.h"
#include "llvm/Support/Debug.h"
#include <stdio.h>
#include <queue>
#include <string>
#include <functional>

using namespace llvm;

#include "llvm/Pass.h"
#include "llvm/IR/Function.h"
#include "llvm/Support/raw_ostream.h"

STATISTIC(numInsertedCallbackFunc, "Number of inserted function profiling callback");

namespace {

  void *MyCallbackFunctionT1(JITProfiling *BP) {
    return BP->CallbackFunction();
  }

  class JITFunctionProfiling : public FunctionPass {

    public:
      static char ID;
      JITFunctionProfiling() : FunctionPass(ID) {}
      JITFunctionProfiling(JITProfiling *jp) : FunctionPass(ID) {
        JP = jp;
      }

      ~JITFunctionProfiling() {
        for (SmallVector<Instruction*, 8>::iterator II = callBackInst.begin();
            II != callBackInst.end(); ++II) {
          (*II)->eraseFromParent();
        }
        callBackInst.clear();
      }

      virtual void getAnalysisUsage(AnalysisUsage& AU) const {
      }

      virtual bool runOnFunction(Function &F) {
        numInsertedCallbackFunc++;

        // Create a pointer type of size sizeof(void*)
        PointerType* VoidPointerTy = PointerType::get(IntegerType::get(F.getContext(), CHAR_BIT), 0);

        //  Create a vector of the argument types
        std::vector<Type*> FunctionArgsTy;
        FunctionArgsTy.push_back(VoidPointerTy);

        // Create the function type: PointerTy func(PointerTy)
        FunctionType* FunctionTy = FunctionType::get(VoidPointerTy, FunctionArgsTy, false);

        // Create the function-pointer type
        PointerType* FunctionPtrTy = PointerType::get(FunctionTy, 0);

        // Insert the inttoptr instructions for the function callback and this function pass
        // (both never change)
        intptr_t FP      = reinterpret_cast<intptr_t>(MyCallbackFunctionT1);
        intptr_t ThisObj = reinterpret_cast<intptr_t>(JP);

        Value* fnptr = ConstantInt::get(IntegerType::get(F.getContext(), sizeof(intptr_t)*CHAR_BIT), APInt(sizeof(intptr_t)*CHAR_BIT, FP));
        Value* bpptr = ConstantInt::get(IntegerType::get(F.getContext(), sizeof(intptr_t)*CHAR_BIT), APInt(sizeof(intptr_t)*CHAR_BIT, ThisObj));

        IntToPtrInst* FuncAddrToPtrInst = new IntToPtrInst(fnptr, FunctionPtrTy);
        IntToPtrInst* BPAddrToPtrInst = new IntToPtrInst(bpptr, VoidPointerTy);

        // Make the function call
        std::vector<Value*> ArrayRefVec;
        ArrayRefVec.push_back(BPAddrToPtrInst);
        CallInst* FuncCallInst = CallInst::Create(FuncAddrToPtrInst, ArrayRef<Value*>(ArrayRefVec));
        F.getEntryBlock().getInstList().push_front(FuncCallInst);
        F.getEntryBlock().getInstList().push_front(BPAddrToPtrInst);
        F.getEntryBlock().getInstList().push_front(FuncAddrToPtrInst);

        callBackInst.push_back(FuncCallInst);
        callBackInst.push_back(BPAddrToPtrInst);
        callBackInst.push_back(FuncAddrToPtrInst);

        DEBUG( dbgs() << "[JITProfiling] Inserted Callback to " << F.getName() << "\n" );

      }

    private:
      JITProfiling* JP;
      SmallVector<Instruction*, 8>  callBackInst;
  };
}

char JITFunctionProfiling::ID = 0;
static RegisterPass<JITFunctionProfiling> X("jitfprofiling", "Add/remove instruction for JIT online profiling of function", false, false);

namespace llvm {
  FunctionPass *createJITFunctionProfilingPass(JITProfiling *jp) { return new JITFunctionProfiling(jp); }
}
