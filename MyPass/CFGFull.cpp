#include "llvm/ADT/Statistic.h"
#include "llvm/IR/Function.h"
#include "llvm/Pass.h"
#include "llvm/Support/raw_ostream.h"

#include "llvm/IR/LegacyPassManager.h"
#include "llvm/Transforms/IPO/PassManagerBuilder.h"

using namespace llvm;

#define DEBUG_TYPE "cfg-full"

STATISTIC(MyCounter, "Counts number of functions greeted ");

namespace {
	struct CFGFull : public FunctionPass{
	static char ID;
	CFGFull() : FunctionPass(ID) {}
	bool runOnFunction(Function &F) override {
		++MyCounter;
		errs() << "Hello! This is Quang Passes ";
		errs().write_escaped(F.getName()) << '\n';
	return false;														}

	void getAnalysisUsage(AnalysisUsage &AU) const override {
		AU.setPreservesAll();
									        }
};

}

char CFGFull::ID = 0;
static RegisterPass<CFGFull> X("cfg-full","Extract CFG full graph pass",
		                false,
				false);

static RegisterStandardPasses Y(
	llvm::PassManagerBuilder::EP_EarlyAsPossible,
	[](const llvm::PassManagerBuilder &Builder,
	llvm::legacy::PassManagerBase &PM){PM.add(new CFGFull());});


