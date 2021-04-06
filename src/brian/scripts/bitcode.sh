#!/bin/bash

FRONTEND_FLAGS="-fno-omit-frame-pointer -ffreestanding -fno-stack-protector -fno-strict-aliasing -fno-strict-overflow -mno-red-zone -fno-common -fgnu89-inline -g -m64 -mcmodel=large"

cd BT
automp -O1 -Xclang -disable-llvm-passes -S -emit-llvm ${FRONTEND_FLAGS} bt.c -I . -I ../common
mv bt.ll ../../../benchmarks/BT

cd ../CG
automp -O1 -Xclang -disable-llvm-passes -S -emit-llvm ${FRONTEND_FLAGS} cg.c -I . -I ../common
mv cg.ll ../../../benchmarks/CG

cd ../EP
automp -O1 -Xclang -disable-llvm-passes -S -emit-llvm ${FRONTEND_FLAGS} ep.c -I . -I ../common
mv ep.ll ../../../benchmarks/EP

cd ../FT
automp -O1 -Xclang -disable-llvm-passes -S -emit-llvm ${FRONTEND_FLAGS} ft.c -I . -I ../common
mv ft.ll ../../../benchmarks/FT

cd ../IS
automp -O1 -Xclang -disable-llvm-passes -S -emit-llvm ${FRONTEND_FLAGS} is.c -I . -I ../common
mv is.ll ../../../benchmarks/IS

cd ../LU
automp -O1 -Xclang -disable-llvm-passes -S -emit-llvm ${FRONTEND_FLAGS} lu.c -I . -I ../common
mv lu.ll ../../../benchmarks/LU

cd ../MG
automp -O1 -Xclang -disable-llvm-passes -S -emit-llvm ${FRONTEND_FLAGS} mg.c -I . -I ../common
mv mg.ll ../../../benchmarks/MG

cd ../SP
automp -O1 -Xclang -disable-llvm-passes -S -emit-llvm ${FRONTEND_FLAGS} sp.c -I . -I ../common
mv sp.ll ../../../benchmarks/SP
