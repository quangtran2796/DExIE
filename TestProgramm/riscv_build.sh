#!/bin/bash
find -name "*.o" -type f -delete;
find -name "*.bc" -type f -delete;
find -name "*.ll" -type f -delete;
find -name "*.s" -type f -delete;
source ../setup.sh
source ../../RISCV/setup.sh
riscv32-unknown-elf-gcc -g test.c -o test
