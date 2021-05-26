#!/bin/bash
source ../setup.sh
opt -load LLVMCFGFull.so -cfg-full < test.ll > /dev/null -enable-new-pm=0
#----------------------Run optimzation passes----------------------------
echo "mem2reg statistic"
opt -mem2reg  test.bc -o test_mem2reg.bc -stats
echo "inline statistic"
opt --always-inline test.bc -o test_inline.bc -stats 
echo "indirect call promotion statistic"
opt --pgo-icall-prom test_mem2reg.bc -o test_ical.bc -stats
echo "memcopy optimization statistic"
opt --memcpyopt test_mem2reg.bc -o test_mcpopt.bc -stats

opt -dot-cfg test_mcpopt.bc -enable-new-pm=0
opt -dot-callgraph test_mcpopt.bc -enable-new-pm=0
llvm-dis test_mem2reg.bc
llvm-dis test_mcpopt.bc
llvm-dis test_ical.bc
llvm-dis test_inline.bc
