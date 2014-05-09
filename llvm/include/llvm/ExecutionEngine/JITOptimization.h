#ifndef LLVM_EXECUTIONENGINE_JITOPTIMIZATION_H
#define LLVM_EXECUTIONENGINE_JITOPTIMIZATION_H

namespace llvm {

class FunctionPass;
class JITProfileData;

FunctionPass* createJITOptimizationsPass(JITProfileData*);
FunctionPass* createDynamicInlinerPass(JITProfileData*);

}

#endif
