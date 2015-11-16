#!/bin/bash

if [ $# -ne 3 ]
  then
    echo "Need 3 arguments: benchmark, binary, file"
    exit
fi

benchmark=$1
binary=$2
file=$3

./$benchmark ./sim-outorder ./$binary -max:inst 50000000 -fastfwd 20000000 > $file 2>&1
