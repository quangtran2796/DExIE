#!/bin/bash
#-------------------------------------------Error command, don't use----------------------------------------
#clang --target=riscv32 -march=rv32gc test.c -o test.o --sysroot=/path/from/home/to/RISCV/riscv32-unknown-elf
#clang -emit-llvm test.c -c -o test.bc
#-----------------------------------------------------------------------------------------------------------
#clang -O3 --target=riscv32 -emit-llvm test.c -c -Xclang -disable-llvm-passes -o test.bc --sysroot=/path/from/home/to/RISCV/riscv32-unknown-elf
find -name "*.o" -type f -delete;
find -name "*.bc" -type f -delete;
find -name "*.ll" -type f -delete;
find -name "*.s" -type f -delete;
clang -O3 -flto --target=riscv32 -emit-llvm foo.c -c -fno-inline-functions -o foo.bc --sysroot=/path/from/home/to/RISCV/riscv32-unknown-elf
llvm-dis foo.bc
llc --march=riscv32 foo.bc -o foo.s
clang --target=riscv32 -march=rv32gc -mno-relax  foo.s -c -o foo.o
ld.lld foo.o -o foo
