dd_llvm_library( LLVMCFGFull MODULE
	CFGFull.cpp
	ADDITIONAL_HEADER_DIRS
	${LLVM_MAIN_INCLUDE_DIR}/llvm/Transforms
	DEPENDS
	intrinsics_gen
	PLUGIN_TOOL
	opt
)

