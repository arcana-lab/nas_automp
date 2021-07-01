#!/bin/bash

# Build AutoMP
pushd ./ ;
cd automp-frontend/llvm
make -j 4
popd ;

# Compile annotated bitcodes
#cd src/brian
#./scripts/bitcode.sh
#cd ../..

# Build NOELLE for Linux
pushd ./ ;
cd noelle_linux
make
# patch the instcombine
cd install/bin
cp ../../../patches/noelle-pre-FT .
cp ../../../patches/noelle-simplification-FT .
#sed -i 's/-instcombine//g' noelle-simplification 
popd ;

# Build NOELLE for Nautilus
pushd ./ ;
cd noelle_nautilus
make
# patch the instcombine
cd install/bin
cp ../../../patches/noelle-pre-FT .
cp ../../../patches/noelle-simplification-FT .
popd ;
