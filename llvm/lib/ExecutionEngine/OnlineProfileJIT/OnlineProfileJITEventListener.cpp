//===-- OnlineProfileJITEventListener.cpp - Tell OnlineProfile about JITted code ----===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//
//
// This file defines a JITEventListener object that uses OnlineProfileWrapper to tell
// oprofile about JITted functions, including source line information.
//
//===----------------------------------------------------------------------===//

#include "llvm/Config/config.h"
#include "llvm/ExecutionEngine/JITEventListener.h"
#include "llvm/ExecutionEngine/ExecutionEngine.h"

#define DEBUG_TYPE "online-profile-jit-event-listener"
#include "llvm/DebugInfo.h"
#include "llvm/IR/Function.h"
#include "llvm/ADT/OwningPtr.h"
#include "llvm/ADT/DenseMap.h"
#include "llvm/CodeGen/MachineFunction.h"
#include "llvm/ExecutionEngine/ObjectImage.h"
#include "llvm/Object/ObjectFile.h"
#include "llvm/Support/Debug.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Support/Errno.h"
#include "EventListenerCommon.h"

#include <dirent.h>
#include <fcntl.h>

using namespace llvm;
using namespace llvm::jitprofiling;

namespace {

struct debug_line_info{
  unsigned long vma;
  unsigned int lineno;
  const char *filename;
};

class OnlineProfileJITEventListener : public JITEventListener {

  void initialize();

public:
  OnlineProfileJITEventListener(){
    initialize();
  }

  ~OnlineProfileJITEventListener() {};

  virtual void NotifyFunctionEmitted(const Function &F,
                                void *FnStart, size_t FnSize,
                                const JITEvent_EmittedFunctionDetails &Details);

  virtual void NotifyFreeingMachineCode(void *OldPtr);

  virtual void NotifyObjectEmitted(const ObjectImage &Obj);

  virtual void NotifyFreeingObject(const ObjectImage &Obj);

  virtual void NotifyFunctionExecute(const Function *fp);

  virtual void dump();

  virtual int getStat(const Function *F) { return info->funcFreq[F]; }

  virtual JITOnlineProfileInfo* getProfileInfo() { return info; }


private:
  JITOnlineProfileInfo *info;
};

void OnlineProfileJITEventListener::initialize() {
  info = new JITOnlineProfileInfo();
  info->funcFreq.clear();
}

void OnlineProfileJITEventListener::dump() {
  for (DenseMap<const Function *,int>::iterator it=info->funcFreq.begin();
      it!=info->funcFreq.end(); ++it)
    dbgs() << it->first->getName() << " => " << it->second << '\n';
  dbgs() << " end profiling \n";
}

static debug_line_info LineStartToOnlineProfileFormat(
    const MachineFunction &MF, FilenameCache &Filenames,
    uintptr_t Address, DebugLoc Loc) {
  debug_line_info Result;
  Result.vma = Address;
  Result.lineno = Loc.getLine();
  Result.filename = Filenames.getFilename(
    Loc.getScope(MF.getFunction()->getContext()));
  DEBUG(dbgs() << "Mapping " << reinterpret_cast<void*>(Result.vma) << " to "
               << Result.filename << ":" << Result.lineno << "\n");
  return Result;
}

void OnlineProfileJITEventListener::NotifyFunctionExecute(const Function *fp) {
  if (info->funcFreq.find(fp) == info->funcFreq.end()) {
    info->funcFreq[fp] = 1;
  } else {
    int cur = info->funcFreq[fp];
    info->funcFreq[fp] = cur+1;
  }
  return;
}

// Adds the just-emitted function to the symbol table.
void OnlineProfileJITEventListener::NotifyFunctionEmitted(
    const Function &F, void *FnStart, size_t FnSize,
    const JITEvent_EmittedFunctionDetails &Details) {
  assert(F.hasName() && FnStart != 0 && "Bad symbol to add");

  DEBUG( dbgs() << "OnlineProfile: " << F.getName() << " emitted \n" );
  /*const Function *fp = &F;
  if (funcFreq.find(fp) == funcFreq.end()) {
    funcFreq[fp] = 1;
  } else {
    int cur = funcFreq[fp];
    funcFreq[fp] = cur+1;
  }*/
  return;

  if (!Details.LineStarts.empty()) {
    // Now we convert the line number information from the address/DebugLoc
    // format in Details to the address/filename/lineno format that OnlineProfile
    // expects.  Note that OnlineProfile 0.9.4 has a bug that causes it to ignore
    // line numbers for addresses above 4G.
    FilenameCache Filenames;
    std::vector<debug_line_info> LineInfo;
    LineInfo.reserve(1 + Details.LineStarts.size());

    DebugLoc FirstLoc = Details.LineStarts[0].Loc;
    assert(!FirstLoc.isUnknown()
           && "LineStarts should not contain unknown DebugLocs");
    MDNode *FirstLocScope = FirstLoc.getScope(F.getContext());
    DISubprogram FunctionDI = getDISubprogram(FirstLocScope);
    if (FunctionDI.Verify()) {
      // If we have debug info for the function itself, use that as the line
      // number of the first several instructions.  Otherwise, after filling
      // LineInfo, we'll adjust the address of the first line number to point at
      // the start of the function.
      debug_line_info line_info;
      line_info.vma = reinterpret_cast<uintptr_t>(FnStart);
      line_info.lineno = FunctionDI.getLineNumber();
      line_info.filename = Filenames.getFilename(FirstLocScope);
      LineInfo.push_back(line_info);
    }

    for (std::vector<EmittedFunctionDetails::LineStart>::const_iterator
           I = Details.LineStarts.begin(), E = Details.LineStarts.end();
         I != E; ++I) {
      LineInfo.push_back(LineStartToOnlineProfileFormat(
                           *Details.MF, Filenames, I->Address, I->Loc));
    }

    // In case the function didn't have line info of its own, adjust the first
    // line info's address to include the start of the function.
    LineInfo[0].vma = reinterpret_cast<uintptr_t>(FnStart);

    for (std::vector<debug_line_info>::iterator i = LineInfo.begin(),
        ie = LineInfo.end(); i!=ie;i++) {
      debug_line_info info = *i;
      dbgs() << "OnlineProfile: " << info.lineno << " " << info.filename << "\n";
    }
  }
}

// Removes the being-deleted function from the symbol table.
void OnlineProfileJITEventListener::NotifyFreeingMachineCode(void *FnStart) {
  assert(FnStart && "Invalid function pointer");
}

void OnlineProfileJITEventListener::NotifyObjectEmitted(const ObjectImage &Obj) {
  dbgs() << "OnlineProfile: " << "Object\n";

  // Use symbol info to iterate functions in the object.
  error_code ec;
  for (object::symbol_iterator I = Obj.begin_symbols(),
                               E = Obj.end_symbols();
                        I != E && !ec;
                        I.increment(ec)) {
    object::SymbolRef::Type SymType;
    if (I->getType(SymType)) continue;
    if (SymType == object::SymbolRef::ST_Function) {
      StringRef  Name;
      uint64_t   Addr;
      uint64_t   Size;
      if (I->getName(Name)) continue;
      if (I->getAddress(Addr)) continue;
      if (I->getSize(Size)) continue;
      // TODO: support line number info (similar to IntelJITEventListener.cpp)
    }
  }
}

void OnlineProfileJITEventListener::NotifyFreeingObject(const ObjectImage &Obj) {

  // Use symbol info to iterate functions in the object.
  error_code ec;
  for (object::symbol_iterator I = Obj.begin_symbols(),
                               E = Obj.end_symbols();
                        I != E && !ec;
                        I.increment(ec)) {
    object::SymbolRef::Type SymType;
    if (I->getType(SymType)) continue;
    if (SymType == object::SymbolRef::ST_Function) {
      uint64_t   Addr;
      if (I->getAddress(Addr)) continue;
    }
  }
}

}  // anonymous namespace.

namespace llvm {

JITEventListener *JITEventListener::createOnlineProfileJITEventListener() {
  return new OnlineProfileJITEventListener();
}

} // namespace llvm

