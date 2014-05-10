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

// this name is used for -stats argument
#define DEBUG_TYPE "jitoptimize"

#include "llvm/ExecutionEngine/JITOptimization.h"
#include "llvm/ExecutionEngine/JITProfileData.h"
#include "llvm/Transforms/Utils/LoopUtils.h"
#include "llvm/Transforms/IPO.h"
#include "llvm/Transforms/Scalar.h"
#include "llvm/Analysis/LoopInfo.h"
#include "llvm/Analysis/LoopPass.h"
#include "llvm/Analysis/AliasAnalysis.h"
#include "llvm/ADT/Statistic.h"
#include "llvm/ADT/DenseMap.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/IntrinsicInst.h"
#include "llvm/Support/CFG.h"
#include "llvm/Support/InstIterator.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Pass.h"
#include <stdio.h>
#include <string>

using namespace llvm;

namespace llvm {
  class JITOptimizations : public FunctionPass {
  private:

  public:
    static char ID;
    JITOptimizations() : FunctionPass(ID) {};
    JITOptimizations(JITProfileData* _JPD) : FunctionPass(ID), JPD(_JPD) {}

    virtual bool runOnFunction(Function& F);

    virtual ~JITOptimizations() { }

  private:
    // -------------------------------------------------------------------------------- //
    //   Variables
    // -------------------------------------------------------------------------------- //

    // The JITOptimizationsInfo object which contains the callback function we
    // are inserting instructions for
    JITProfileData* JPD;

    // Loop information for the pass (needed for getting the weights of
    // edges and basic blocks)
    LoopInfo* LI;

    // The function pass manager which runs all of the optimizations
    FunctionPassManager* FPM;

    // -------------------------------------------------------------------------------- //
    //   Methods
    // -------------------------------------------------------------------------------- //
    virtual void getAnalysisUsage(AnalysisUsage& AU) const {
      AU.addRequired<LoopInfo>();
    }
  };

  char JITOptimizations::ID = 0;
  static RegisterPass<JITOptimizations> YYY("jitoptimizationspass",
                  "Pass for running optimizations with jit", false, false);

  FunctionPass *createJITOptimizationsPass(JITProfileData *JPD) {
    return new JITOptimizations(JPD);
  }

  bool JITOptimizations::runOnFunction(Function& F) {
    this->LI        = &getAnalysis<LoopInfo>();
    bool changed = false;

    FPM = new FunctionPassManager(F.getParent());

    // if the user input something we use those passes
    std::vector<const PassInfo *> &customPasses = JPD->getPassList();
    if (customPasses.size() > 0) {
      for (int i=0; i<customPasses.size();i++) {
        const PassInfo *pass = customPasses[i];
        FPM->add(pass->createPass());
      }
    } else {
      // Optimization ordering:
      //  - ADCE
      //  - inline
      //  - DSE <---- THIS causes seg faults when running on sqlite3
      //              test in llvm test-suite
      //  - Instruction Combining
      //  ---- IF LOOPS ----
      //  - LICM
      //  - Loop Simplify
      //  - Loop Strength Reduction
      //  ------------------
      //  - SCCP
      //  - Simplify CFG
      //  - SROA
      FPM->add(createAggressiveDCEPass());
      FPM->add(createDynamicInlinerPass(JPD));
      FPM->add(createInstructionCombiningPass());

      // --- Loop optimizations --- //
      if (LI->begin() != LI->end()) {
        FPM->add(createLICMPass());
        FPM->add(createLoopSimplifyPass());
        FPM->add(createLoopStrengthReducePass());
      }
      // -------------------------- //

      FPM->add(createSCCPPass());
      FPM->add(createCFGSimplificationPass());
      FPM->add(createSROAPass(false));
    }

    changed = changed | FPM->doInitialization();
    changed = changed | FPM->run(F);
    changed = changed | FPM->doFinalization();

    delete FPM;
    return changed;
  }
} // llvm namespace
