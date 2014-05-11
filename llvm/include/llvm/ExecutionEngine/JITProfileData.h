#ifndef JITPROFILEDATA_H_
#define JITPROFILEDATA_H_

#include "llvm/ADT/DenseMap.h"
#include "llvm/ADT/SetVector.h"
#include "llvm/Support/Debug.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/PassManager.h"
#include <stdio.h>

using namespace llvm;

typedef std::pair<BasicBlock*, BasicBlock*> Edge;
typedef SetVector<Edge>                     EdgeSet;
typedef SetVector<Edge*>                    EdgePtrSet;
typedef DenseMap<BasicBlock*, unsigned>     BlockCountMap;
typedef DenseMap<Edge, unsigned>            EdgeCountMap;
typedef DenseMap<Function*, unsigned>       FuncCountMap;

typedef struct {
  FunctionPassManager* FPM;
  EdgePtrSet           ProfileEdges;
  EdgeSet              NonProfileEdges;
  BasicBlock*          ExitBlock;
  bool                 removedProfiling;
} JITFunctionData;

typedef DenseMap<Function*, JITFunctionData*> FuncDataMap;

namespace llvm {
  class ExecutionEngine;
  // temporarily save this class here for easy compilation
  class JITProfileData {
    public:
      JITProfileData(int t1, int t2, double tol, ExecutionEngine* J);
      ~JITProfileData() {
        DumpBBFreq();
        for (FuncDataMap::iterator I = FuncData.begin(), E = FuncData.end(); I != E; ++I) {
          if (I->second->FPM != NULL)
            delete I->second->FPM;
          for (EdgePtrSet::iterator II = I->second->ProfileEdges.begin(), EE = I->second->ProfileEdges.end(); II != EE; ++II) {
              delete (*II);
          }
        }
      }

      unsigned int getThresholdT1() const { return TH_ENABLE_BB_PROFILE; };
      unsigned int getThresholdT2() const { return TH_ENABLE_APPLY_OPT; }
      double getTolerance() const { return TOL_ENABLE_APPLY_OPT; }

      const BlockCountMap& getBlockMap() const { return BlockFreq; }

      void* FunctionCallback(Function *F);
      void* BasicBlockCallback(Edge* B, Function* F);

      void initializeEdgeCounts(Function *F);
      void initializeProfiling(Function* F);

      // Used by JITBBProfilingPass to put in the corresponding edges
      JITFunctionData* getFuncData(Function* F) { return FuncData[F]; }
      EdgePtrSet* getProfileEdges(Function* F)     { return &FuncData[F]->ProfileEdges; }
      EdgeSet*    getNonProfileEdges(Function* F)  { return &FuncData[F]->NonProfileEdges; }

      void setupUpdatingCounts(Function* F);
      void updateCounts(Function* F);
      void updateEdgeCounts(Function* F, BasicBlock* B, Edge E);
      void updateBlockCounts(Function* F);

      void DumpFuncFreq() {
        DEBUG( dbgs() << "*** Function Frequencies ****\n" );
        for (FuncCountMap::iterator I = FuncFreq.begin(), E=FuncFreq.end(); I != E; ++I) {
          DEBUG( dbgs() << I->first->getName() << " " << I->second << "\n" );
        }
      }
      void DumpBBFreq() {
        DEBUG( dbgs() << "*** Basic Block Frequencies ****\n" );
        for (BlockCountMap::iterator I = BlockFreq.begin(), E=BlockFreq.end(); I != E; ++I) {
          DEBUG( dbgs() << I->first->getName() << " " << I->second << "\n" );
        }
      }


      void doOptimization(Function *);
      std::vector<const PassInfo*> &getPassList() { return CustomPasses; };

    private:
      // Thresholds
      unsigned int TH_ENABLE_BB_PROFILE;
      unsigned int TH_ENABLE_APPLY_OPT;
      double TOL_ENABLE_APPLY_OPT;

      // Function data
      FuncDataMap FuncData;

      // Function pass manager for running the function and
      // basic block profiling passes
      //FPMMap FPMs;

      // The frequency variables
      FuncCountMap  FuncFreq;
      EdgeCountMap  EdgeFreq;
      BlockCountMap BlockFreq;

      // Edge information for each function
      //EdgeMapSet*   ProfileEdges;
      //EdgeMapSet*   NonProfileEdges;

      // The JIT object
      ExecutionEngine* TheJIT;
      BasicBlock *ExitBB;

      // List of custom passes
      std::vector<const PassInfo *> CustomPasses;
  };
}

#endif
