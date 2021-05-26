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
#clang -Oz -flto --target=riscv32 -emit-llvm test.c -c -fno-inline-functions -o test.bc --sysroot=/path/from/home/to/RISCV/riscv32-unknown-elf
clang -O2 -flto=full --target=riscv32 -emit-llvm test.c -c -o test.bc --sysroot=/path/from/home/to/RISCV/riscv32-unknown-elf
llvm-dis test.bc
llc --disable-tail-calls --march=riscv32 test.bc -o test.s
clang --target=riscv32 -march=rv32gc -mno-relax  test.s -c -o test.o
ld.lld test.o -o test
#ld.lld test.o foo.o -o test
