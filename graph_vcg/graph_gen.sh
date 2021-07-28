#!/bin/bash
filename="$1"
source ~/echo2/mysetup.sh;
riscv32-unknown-elf-objdump -d "${filename}" > "${filename}.s" ;
graphgen --target=riscv "${filename}.s";
