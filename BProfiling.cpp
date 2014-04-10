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

#define DEBUG_TYPE "brooks8"
#include "llvm/Transforms/Scalar.h"
#include "llvm/Transforms/Utils/UnifyFunctionExitNodes.h"
#include "llvm/Transforms/Utils/LoopUtils.h"
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
#include <stdio.h>
#include <queue>

using namespace llvm;

namespace {
  typedef std::pair<const BasicBlock*, const BasicBlock*> ConstEdge;
  typedef std::pair<BasicBlock*, BasicBlock*> Edge;
  typedef std::pair<Edge, float>              EdgeWeight;
  typedef SetVector<Edge>                     EdgeSet;
  typedef DenseMap<Edge, float>               EdgeWeightMap;
  typedef DenseMap<BasicBlock*, float>        BlockWeightMap;
  typedef DenseMap<BasicBlock*, SmallVector<BasicBlock*, 8> > BlockEdgeMap;

  class BProfiling : public FunctionPass {
  public:
    static char ID;
    BProfiling () : FunctionPass(ID) { 
      initializeBProfilingPass(*PassRegistry::getPassRegistry());
    }

  private:
    Function* F;
    LoopInfo* LI;
    BasicBlock* ExitBB;

    int LoopMultiplier; // Assumption on number of iterations for each loop

    BlockEdgeMap   Predecessors;  // Is this needed?
    BlockEdgeMap   Successors;    // Is this needed?
    BlockWeightMap BlockWeights;
    EdgeWeightMap  EdgeWeights;
    EdgeSet        MaxSpanningTree;

    SmallPtrSet<Loop*, 8> Loops;
    DenseMap<Loop*, SetVector<Edge> > LoopEdges;
    DenseMap<Loop*, SetVector<Edge> > LoopEdgesAdded;


    struct EdgeWeightCompare {
      bool operator()(const EdgeWeight& l, EdgeWeight& r) const {
        return l.second < r.second;
      }
    };

    std::priority_queue<EdgeWeight, std::vector<EdgeWeight>, EdgeWeightCompare> EdgePQ;

    virtual bool runOnFunction(Function& F);

    virtual void getAnalysisUsage(AnalysisUsage& AU) const {
      //AU.addRequiredID(LoopSimplifyID);
      //AU.addPreservedID(LoopSimplifyID);
      //AU.setPreservesCFG();
      AU.addRequired<UnifyFunctionExitNodes>();
      AU.addRequired<LoopInfo>();
    }

    void getWeights();
    void generateLoopEdges();
    void constructMaxSpanTree();
    bool addPotentialLoopEdge(Edge E);
    bool createsCycle(Loop* L, Edge E);
    void insertInstructions();

    bool ExitEdgesContains(SmallVector<ConstEdge, 16> vec, ConstEdge elem);

    void printAllWeights();
    void printAllLoops();
    void printMaxSpanTree();
  };
}

char BProfiling::ID = 0;
INITIALIZE_PASS(BProfiling, "bprofiling", "Brooks8 - Profiling", false, false)
FunctionPass *llvm::createBProfilingPass() { return new BProfiling(); }

typedef void* (*FunctionPtr)(void*);

static void* MyEmittedFunction(void* args) {
  printf("Hello! [%p]\n", args);
  return 0;
}

bool BProfiling::runOnFunction(Function& F) {
  this->F  = &F;
  this->LI = &getAnalysis<LoopInfo>();
  this->ExitBB = getAnalysis<UnifyFunctionExitNodes>().getReturnBlock();
  this->LoopMultiplier = 10;

  fprintf(stderr, "Exit Basic Block: %s\n", this->ExitBB->getName().str().c_str());

  getWeights();
  printAllWeights();

  generateLoopEdges();
  printAllLoops();

  constructMaxSpanTree();
  printMaxSpanTree();

  insertInstructions();

  // What do we return?
  return true;
}

void BProfiling::insertInstructions() {
  // Insert allocation for profiling variables
  SmallPtrSet<Instruction*, 16> Instructions;
  SetVector<Edge> InsertionEdges;

  // Iterate through all edges to find the insertion edges
  for (DenseMap<Edge, float>::iterator DI = EdgeWeights.begin(), DE = EdgeWeights.end(); DI != DE; ++DI) {
    Edge E = DI->first;
    if (MaxSpanningTree.count(E) == 0) {
      InsertionEdges.insert(E);
    }
  }

  // Address type
  IntegerType* IntPtrTy = IntegerType::get(F->getContext(), sizeof(intptr_t)*CHAR_BIT);

  // Create a pointer type of size sizeof(void*)
  PointerType* VoidPointerTy = PointerType::get(IntegerType::get(F->getContext(), CHAR_BIT), 0);

  // Create a pointer type of size sizeof(BasicBlock*)
  PointerType* BBPointerTy = PointerType::get(IntegerType::get(F->getContext(), sizeof(BasicBlock*)*CHAR_BIT), 0);

  //  Create a vector of the argument types
  std::vector<Type*> FunctionArgsTy;
  FunctionArgsTy.push_back(VoidPointerTy);

  // Create the function type: PointerTy func(PointerTy)
  FunctionType* FunctionTy = FunctionType::get(VoidPointerTy, FunctionArgsTy, false);

  // Create the function-pointer type
  PointerType* FunctionPtrTy = PointerType::get(FunctionTy, 0);

  fprintf(stderr, "Address type: ");
  IntPtrTy->dump();

  fprintf(stderr, "\nVoid pointer type: ");
  VoidPointerTy->dump();

  fprintf(stderr, "\nBB pointer type: ");
  BBPointerTy->dump();

  fprintf(stderr, "\nFunc pointer type: ");
  FunctionPtrTy->dump();

  fprintf(stderr, "\n");

  for (SetVector<Edge>::iterator I = InsertionEdges.begin(), E = InsertionEdges.end(); I != E; ++I) {
    BasicBlock* B = I->first;
    BasicBlock::iterator BI = B->getInstList().begin();

    // Create a new alloca instruction for the address of the basic block
    AllocaInst* BBAllocaInst = new AllocaInst(IntPtrTy);
    BI = B->getInstList().insertAfter(BI, BBAllocaInst);

    BBAllocaInst->dump();

    // Create a new alloca instruction for the address of the function
    AllocaInst* FuncAllocaInst = new AllocaInst(IntPtrTy);
    BI = B->getInstList().insertAfter(BI, FuncAllocaInst);

    FuncAllocaInst->dump();

    // Create a new alloca instruction for the function
    AllocaInst* FuncPtrAllocaInst = new AllocaInst(FunctionPtrTy);
    BI = B->getInstList().insertAfter(BI, FuncPtrAllocaInst);

    FuncPtrAllocaInst->dump();


    // Store the address of the current basic block
    intptr_t BBAddr = (intptr_t)B;
    StoreInst* BBStoreInst = new StoreInst(ConstantInt::get(IntegerType::get(F->getContext(), sizeof(intptr_t)*CHAR_BIT), APInt(sizeof(intptr_t)*CHAR_BIT, BBAddr)), BBAllocaInst);
    BI = B->getInstList().insertAfter(BI, BBStoreInst);

    BBStoreInst->dump();


    // Load the address of the basic block
    LoadInst* BBLoadInst = new LoadInst(BBAllocaInst);
    BI = B->getInstList().insertAfter(BI, BBLoadInst);

    BBLoadInst->dump();

    // Store the address of the function to be called
    intptr_t FuncAddr = (intptr_t)MyEmittedFunction;
    StoreInst* FuncStoreInst = new StoreInst(ConstantInt::get(IntPtrTy, APInt(sizeof(intptr_t)*CHAR_BIT, FuncAddr)), FuncAllocaInst);
    BI = B->getInstList().insertAfter(BI, FuncStoreInst);

//    fprintf(stderr, "Function address: %p\n", MyEmittedFunction);

    FuncStoreInst->dump();

    // Load the address of the function
    LoadInst* FuncLoadInst = new LoadInst(FuncAllocaInst);
    BI = B->getInstList().insertAfter(BI, FuncLoadInst);

    FuncLoadInst->dump();

    // Perform inttoptr on function address
    IntToPtrInst* FuncAddrToPtrInst = new IntToPtrInst(FuncLoadInst, FunctionPtrTy);
    BI = B->getInstList().insertAfter(BI, FuncAddrToPtrInst);

    FuncAddrToPtrInst->dump();

    // Store the cast
    StoreInst* FuncPtrStoreInst = new StoreInst(FuncAddrToPtrInst, FuncPtrAllocaInst);
    BI = B->getInstList().insertAfter(BI, FuncPtrStoreInst);

    FuncPtrStoreInst->dump();

    // Load the function pointer
    LoadInst* FuncPtrLoadInst = new LoadInst(FuncPtrAllocaInst);
    BI = B->getInstList().insertAfter(BI, FuncPtrLoadInst);

    FuncPtrLoadInst->dump();

    // Perform inttoptr on the basic block
    IntToPtrInst* BBAddrToPtrInst = new IntToPtrInst(BBLoadInst, VoidPointerTy);
    BI = B->getInstList().insertAfter(BI, BBAddrToPtrInst);

    BBAddrToPtrInst->dump();

    // Make the function call
    std::vector<Value*> ArrayRefVec;
    ArrayRefVec.push_back(BBAddrToPtrInst);
    CallInst* FuncCallInst = CallInst::Create(FuncPtrLoadInst, ArrayRef<Value*>(ArrayRefVec));
    BI = B->getInstList().insertAfter(BI, FuncCallInst);

    FuncCallInst->dump();
  }

  fprintf(stderr, "**** Function: ****\n");
  F->dump();
}

bool BProfiling::ExitEdgesContains(SmallVector<ConstEdge, 16> vec, ConstEdge elem) {
  for (SmallVectorImpl<ConstEdge>::iterator I = vec.begin(), E = vec.end(); I != E; ++I) {
    if (I->first == elem.first && I->second == elem.second)
      return true;
  }
  return false;
}

void BProfiling::generateLoopEdges() {
  SmallVector<BasicBlock*, 32> Worklist;
  SmallPtrSet<BasicBlock*, 32> Visited;
  fprintf(stderr, "Generating Loop Edges\n");
  for (SmallPtrSet<Loop*, 8>::iterator I = Loops.begin(), E = Loops.end(); I != E; ++I) {
    Loop* L = *I;
    fprintf(stderr, "\tLoop Header: %s\n", L->getHeader()->getName().str().c_str());
    Worklist.push_back(L->getHeader());
    for (unsigned i = 0; i < Worklist.size(); ++i) {
      BasicBlock* B = Worklist[i];
      for (succ_iterator SI = succ_begin(B), SE = succ_end(B); SI != SE; ++SI) {
        BasicBlock* BS = *SI;
        if (LI->getLoopFor(BS) == L) {
          LoopEdges[L].insert(std::make_pair(B, BS));
          if (Visited.count(BS) == 0)
            Worklist.push_back(BS);
        }
      }
      Visited.insert(B);
    }
  }
}

// Currently assumes ONE back-edge per loop
bool BProfiling::createsCycle(Loop* L, Edge E) {
  bool cyclic;

  // For each Loop (including and) contained within L
  while (L) {
    cyclic = true;
    // Loop over all edges of L
    for (SetVector<Edge>::iterator LI = LoopEdges[L].begin(), LE = LoopEdges[L].end(); LI != LE; ++LI) {
      // Skip the edge being added
      if (*LI == E)
        continue;

      // If the current edge *I is not in LoopEdgesAdded (and *I != E), adding E does not
      // create a cycle
      if (LoopEdgesAdded[L].count(*LI) == 0) {
        cyclic = false;
        break;
      }
    }

    // If cyclic is not false, adding E creates a cycle in this loop-depth
    if (cyclic)
      return true;

    // Continue up the nesting
    L = L->getParentLoop();
  }
  return false;
}

bool BProfiling::addPotentialLoopEdge(Edge E) {
  Loop* L1 = LI->getLoopFor(E.first);
  Loop* L2 = LI->getLoopFor(E.second);

  if (L1 == NULL && L2 == NULL)
    return true;

  while (L1 && L2) {
    // If the two loops are equal, add the edge to the loop and all parent loops
    if (L1 == L2) {
      // If adding E does not create a cycle in L1 or any parent loop, it is safe to
      // add E to all loops
      if (!createsCycle(L1, E)) {
        while (L1 && L1->getLoopDepth() >= 1) {
            LoopEdgesAdded[L1].insert(E);
            L1 = L1->getParentLoop();
        }
        return true;
      }
      return false;
    }
    // If the two loops are at the same depth but not equal
    if (L1->getLoopDepth() == L2->getLoopDepth()) {
      L1 = L1->getParentLoop();
      L2 = L2->getParentLoop();
    }
    // If L1 is at a higher depth than L2
    else if (L1->getLoopDepth() > L2->getLoopDepth()) {
      // Get the parent of L1 such that the new loop and L2 are at the same depth
      while(L1->getLoopDepth() != L2->getLoopDepth())
        L1 = L1->getParentLoop();
    }
    // If L2 is at a higher depth than L1
    else {
      // Get the parent of L2 such that the new loop and L1 are at the same depth
      while(L1->getLoopDepth() != L2->getLoopDepth())
        L2 = L2->getParentLoop();
    }
  }
  return true;
}

void BProfiling::constructMaxSpanTree() {
  fprintf(stderr, "**** Constructing Max Spanning Tree ****\n");
  unsigned numBB = this->F->size();
  Edge E;

  while(EdgePQ.size() != 0 && MaxSpanningTree.size() < numBB-1) {
    E = EdgePQ.top().first;
    EdgePQ.pop();
    fprintf(stderr, "Testing edge: %s -> %s\n", E.first->getName().str().c_str(), E.second->getName().str().c_str());
    if (addPotentialLoopEdge(E)) {
      fprintf(stderr, "Edge added\n\n");
      MaxSpanningTree.insert(E);
    }
  }

  fprintf(stderr,"Completed constructing Max Spanning Tree\n");

}

void BProfiling::getWeights() {
  Edge ExitEntryEdge = std::make_pair(ExitBB, &F->getEntryBlock());
  Edge tempEdge;
  EdgeWeights[ExitEntryEdge] = 1.0;
  float weight       = 0.0;
  int   num_succ_nle = 0; // Number of successors that aren't loop-exit edges
  std::string s1, s2;

  SmallVector<BasicBlock*, 128> Worklist;
  SmallPtrSet<BasicBlock*, 128> VisitedBlocks;
  VisitedBlocks.insert(ExitBB);
  BlockWeights[ExitBB] = 1.0;
  Worklist.push_back(&F->getEntryBlock());

  fprintf(stderr, "***** Getting Weights *****\n");

  for (unsigned i = 0; i < Worklist.size(); ++i) {
    BasicBlock* CurrentBlock = Worklist[i];
    Loop*       CurrentLoop  = LI->getLoopFor(CurrentBlock);
    SmallVector<ConstEdge, 16> ExitEdges;
    weight = 0.0;

    s1 = CurrentBlock->getName().str();
    fprintf(stderr,"--------------------------------------------\n");
    fprintf(stderr,"Current Basic Block: %s\n", s1.c_str());

    for (pred_iterator PI = pred_begin(CurrentBlock),
         PE = pred_end(CurrentBlock); PI != PE; ++PI) {
      BasicBlock* B = *PI;
      // Add the predecessors to the map
      Predecessors[CurrentBlock].push_back(B);
      // 1) the weight of a BasicBlock is the sum of the weights of its
      //    incoming edges that are not backedges
      if (VisitedBlocks.count(B) == 0)
        continue;
      s2 = B->getName().str();
      fprintf(stderr, "\t%s -> %s : [%f]\n", s2.c_str(), s1.c_str(), EdgeWeights[std::make_pair(B, CurrentBlock)]);
      weight += EdgeWeights[std::make_pair(B, CurrentBlock)];
    }
    if (&F->getEntryBlock() == CurrentBlock)
      weight = 1.0;


    // Set the weight of the current basic block
    BlockWeights[CurrentBlock] = weight;
    fprintf(stderr,"Current Basic Block weight: %f\n", BlockWeights[CurrentBlock]);

    // 2) if BasicBlock b is a loop header with weight W and N = |loop_exits(B)|
    //    then each edge in loop_exits(b) has weight W/N
    if (CurrentLoop) {
      // If not already added, add the loop to the set of loops
      if (Loops.count(CurrentLoop) == 0)
        Loops.insert(CurrentLoop);
      fprintf(stderr, "Current Basic Block is in a loop\n");
      // Get all of the exit edges
      CurrentLoop->getExitEdges(ExitEdges);


      if (LI->isLoopHeader(CurrentBlock)) {
        int num_exits = ExitEdges.size();

        fprintf(stderr, "Current Basic Block is a loop header\n");

        fprintf(stderr, "Loop exits:\n");
        for (SmallVectorImpl<ConstEdge>::iterator LEI = ExitEdges.begin(), LEE = ExitEdges.end(); LEI != LEE; ++LEI) {
          s1 = LEI->first->getName().str();
          s2 = LEI->second->getName().str();
          Edge E = std::make_pair(const_cast<BasicBlock*>(LEI->first), const_cast<BasicBlock*>(LEI->second));
          EdgeWeights[E] = weight / num_exits;
          EdgePQ.push(std::make_pair(E, EdgeWeights[E]));
          fprintf(stderr,"\t%s -> %s : [%f]\n", s1.c_str(), s2.c_str(), EdgeWeights[E]);
        }

        // 3a) let W be the weight of b times LoopMultiplier (if b is loop header)
        weight = weight * LoopMultiplier;
        BlockWeights[CurrentBlock] = weight;
        fprintf(stderr, "Current Basic Block new weight: %f\n", BlockWeights[CurrentBlock]);
      }
    }

    for (succ_iterator SI = succ_begin(CurrentBlock),
         SE = succ_end(CurrentBlock); SI != SE; ++SI) {
      Successors[CurrentBlock].push_back(*SI);
    }

    int   num_succ_lee = 0;   // Number of loop-edge exits
    float w_e          = 0.0; // loop-edge weights to successors of b

    if (CurrentLoop) {
      for (SmallVectorImpl<ConstEdge>::iterator LEI = ExitEdges.begin(), LEE = ExitEdges.end(); LEI != LEE; ++LEI) {
        Edge E = std::make_pair(const_cast<BasicBlock*>((*LEI).first), const_cast<BasicBlock*>((*LEI).second));
        // Get w_e = sum of weight of outgoing edges of b that are loop-exit edges
        if (E.first == CurrentBlock) {
          w_e += EdgeWeights[E];
          ++num_succ_lee;
        }
      }
    }

    // Number of successors that aren't loop-exit edges
    num_succ_nle = Successors[CurrentBlock].size() - num_succ_lee;

    fprintf(stderr, "\tNumber of successors (not loop-exit edges): %d\n", num_succ_nle);
    // 3b) Each outgoing edge of b that is not a loop-exit edge has a weight (w-w_e)/N
    //     where N is the number of outgoing edges of b that are not loop-exit edges
    for (succ_iterator SI = succ_begin(CurrentBlock),
         SE = succ_end(CurrentBlock); SI != SE; ++SI) {
      BasicBlock* b1 = CurrentBlock;
      BasicBlock* b2 = *SI;
      if (VisitedBlocks.count(*SI) == 0) {
        s1 = CurrentBlock->getName().str();
        s2 = (*SI)->getName().str();
        fprintf(stderr, "\t%s -> %s\n", s1.c_str(), s2.c_str());

        Worklist.push_back(*SI);
      }

      if (ExitEdgesContains(ExitEdges, std::make_pair(b1, b2))) {
        fprintf(stderr, "\tThis successor is a loop-exit\n");
        continue;
      }
      fprintf(stderr, "----- %f, %f, %d\n", weight, w_e, num_succ_nle);
      Edge E = std::make_pair(b1, b2);
      EdgeWeights[E] = (weight - w_e) / (float)(num_succ_nle);
      EdgePQ.push(std::make_pair(E, EdgeWeights[E]));
      fprintf(stderr, "\tEdge weight: %f\n", EdgeWeights[E]);
    }

    VisitedBlocks.insert(CurrentBlock);
  }
  fprintf(stderr, "***** End Getting Weights *****\n");
}

void BProfiling::printAllWeights() {
  std::string s1, s2;
  fprintf(stderr,"**** BlockWeights ****\n");
  for (DenseMap<BasicBlock*, float>::iterator DI = BlockWeights.begin(), DE = BlockWeights.end(); DI != DE; ++DI) {
    s1 = DI->first->getName().str();
    fprintf(stderr, "%s: %f\n", s1.c_str(), DI->second);
  }

  fprintf(stderr,"***** EdgeWeights *****\n");
  for (DenseMap<Edge, float>::iterator DI = EdgeWeights.begin(), DE = EdgeWeights.end(); DI != DE; ++DI) {
    s1 = DI->first.first->getName().str();
    s2 = DI->first.second->getName().str();
    fprintf(stderr, "%s -> %s : %f\n", s1.c_str(), s2.c_str(), DI->second);
  }
}

void BProfiling::printAllLoops() {
  std::string s1, s2;
  fprintf(stderr,"**** Loops ****\n");
  for (SmallPtrSet<Loop*, 8>::iterator I = Loops.begin(), E = Loops.end(); I != E; ++I) {
    fprintf(stderr, "Loop: %s\n", (*I)->getHeader()->getName().str().c_str());
    for (SetVector<Edge>::iterator EI = LoopEdges[*I].begin(), EE = LoopEdges[*I].end(); EI != EE; ++EI) {
      Edge edge = *EI;
      s1 = edge.first->getName().str();
      s2 = edge.second->getName().str();
      fprintf(stderr,"\t%s -> %s\n", s1.c_str(), s2.c_str());
    }
  }
}

void BProfiling::printMaxSpanTree() {
  std::string s1, s2;
  fprintf(stderr,"**** Max Spanning Tree ****\n");
  for (SetVector<Edge>::iterator I = MaxSpanningTree.begin(), E = MaxSpanningTree.end(); I != E; ++I) {
    Edge edge = *I;
    s1 = edge.first->getName().str();
    s2 = edge.second->getName().str();
    fprintf(stderr,"%s -> %s\n", s1.c_str(), s2.c_str());
  }
}

