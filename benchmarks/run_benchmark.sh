#!/bin/bash

if [ $# -lt 4 ]
  then
    echo "Need at least 4 arguments: benchmark, binary, markovEnabled (true or false), strideEnabled (true or false), file to pipe stderr/stdout (optional)"
    exit
fi

benchmark=$1
binary=$2
markovEnabled=$3
strideEnabled=$4

if [ $# -eq 5 ] 
  then
    file=$5
    ./$benchmark ../simple-scalar/final_project ./$binary -markovprefetching:enabled $markovEnabled -prefetchcache:enabled $strideEnabled -max:inst 50000000 -fastfwd 		20000000 > $file 2>&1

  else 

     ./$benchmark ../simple-scalar/final_project ./$binary -markovprefetching:enabled $markovEnabled -prefetchcache:enabled $strideEnabled -max:inst 50000000 -fastfwd 		20000000
fi





