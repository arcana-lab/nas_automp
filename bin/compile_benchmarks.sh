#!/bin/bash

export PATH=`pwd`/automp-frontend/llvm/install/bin:$PATH
export PATH=`pwd`/patches:$PATH

pushd ./ ;
cd src/brian ; 
./scripts/bitcode.sh
popd ;

export PATH=`pwd`/noelle_linux/install/bin:$PATH

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
