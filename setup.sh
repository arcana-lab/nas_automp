#!/bin/bash

# Build automp
cd openmp/llvm
make -j 4
cd ../../

# Compile annotated bitcodes
cd src/brian
./scripts/bitcode.sh
cd ../..

# build noelle branch
cd noelle
make
# patch the instcombine
cd install/bin
sed -i 's/-instcombine//g' noelle-simplification 

