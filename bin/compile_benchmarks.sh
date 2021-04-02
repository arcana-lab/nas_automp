#!/bin/bash

export PATH=`pwd`/openmp/llvm/install/bin:$PATH

pushd ./ ;
cd src/brian ; 
./scripts/bitcode.sh
popd ;

cd benchmarks ; 
for i in `ls` ; do
  if ! test -d $i ; then
    continue ;
  fi
  if test "$i" == "scripts/" ; then
    continue ;
  fi
  if test "$i" == "scripts" ; then
    continue ;
  fi
  echo "$i" ;

  pushd ./ ;
  cd $i ;
  make clean ; 
  make &> compiler_output.txt ;
  popd ;
done
