#!/bin/bash
find -name "*.dot" -exec dot -Tpdf -O {} \;
find -name "*.pdf" -exec mv {} /mnt/c/Users/Tran/Documents/University/llvm_picture \;
find -name "*.dot" -type f -delete;
