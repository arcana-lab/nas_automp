#!/bin/bash

# Build automp
cd automp-frontend/llvm
make -j 4
cd ../../

# Compile annotated bitcodes
#cd src/brian
#./scripts/bitcode.sh
#cd ../..

# build noelle branch
cd noelle
make
# patch the instcombine
cd install/bin
cp ../../../patches/noelle-pre-FT .
cp ../../../patches/noelle-simplification-FT .
#sed -i 's/-instcombine//g' noelle-simplification 

