#!/bin/bash

# Fetch the input
if test $# -lt 1 ; then
  echo "USAGE: `basename $0` BENCHMARK" ;
  exit 1;
fi
bench="$1" ;

export PATH=`pwd`/openmp/llvm/install/bin:$PATH
export PATH=`pwd`/patches:$PATH

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
  if test "$i" != "$bench" ; then
    continue ;
  fi
  echo "$i" ;

  pushd ./ ;
  cd $i ;
  make clean ; 
  make &> compiler_output.txt ;
  popd ;
done
