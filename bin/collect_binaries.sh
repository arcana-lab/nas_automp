#!/bin/bash

if test $# -lt 1; then
  echo "USAGE: `basename $0` DEST_DIR" ;
  exit 1;
fi
dstDir="`realpath $1`" ;

if ! test -d $dstDir ; then
  echo "ERROR = \"$1\" is not a directory" ;
  exit 1;
fi

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

  if ! test -f "${i}/parallelized.o" ; then
    continue ;
  fi
  echo "$i" ;
  cp "${i}/parallelized.o" ${dstDir}/${i}.o ;
  ls ${i}/*parallel.ll &> /dev/null ;
  if test $? -eq 0 ; then
    llFileName="`ls ${i}/*parallel.ll`" ;
    cp "$llFileName" ${dstDir}/${i}.ll ;
  fi
  ls ${i}/*parallel.bc &> /dev/null ;
  if test $? -eq 0 ; then
    llFileName="`ls ${i}/*parallel.bc`" ;
    cp "$llFileName" ${dstDir}/${i}.bc ;
  fi
  cp "${i}/compiler_output.txt" "${dstDir}/${i}_compiler_output.txt" ;
  rm -f "${dstDir}/${i}_compiler_output.txt.xz" ;
  xz -z "${dstDir}/${i}_compiler_output.txt" ;
  cp "${i}/parallelized_binary" "${dstDir}/${i}_binary" ;
done
