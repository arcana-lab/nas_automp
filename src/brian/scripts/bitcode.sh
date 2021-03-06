#!/bin/bash

cd BT
automp -O1 -Xclang -disable-llvm-passes -S -emit-llvm bt.c -I . -I ../common
mv bt.ll ../../../benchmarks/BT

cd ../CG
automp -O1 -Xclang -disable-llvm-passes -S -emit-llvm cg.c -I . -I ../common
mv cg.ll ../../../benchmarks/CG

cd ../EP
automp -O1 -Xclang -disable-llvm-passes -S -emit-llvm ep.c -I . -I ../common
mv ep.ll ../../../benchmarks/EP

cd ../FT
automp -O1 -Xclang -disable-llvm-passes -S -emit-llvm ft.c -I . -I ../common
mv ft.ll ../../../benchmarks/FT

cd ../IS
automp -O1 -Xclang -disable-llvm-passes -S -emit-llvm is.c -I . -I ../common
mv is.ll ../../../benchmarks/IS

cd ../LU
automp -O1 -Xclang -disable-llvm-passes -S -emit-llvm lu.c -I . -I ../common
mv lu.ll ../../../benchmarks/LU

cd ../MG
automp -O1 -Xclang -disable-llvm-passes -S -emit-llvm mg.c -I . -I ../common
mv mg.ll ../../../benchmarks/MG

cd ../SP
automp -O1 -Xclang -disable-llvm-passes -S -emit-llvm sp.c -I . -I ../common
mv sp.ll ../../../benchmarks/SP
