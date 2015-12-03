#!/bin/bash

if [ $# -ne 2 ]
  then
    echo "Need 2 arguments: file to parse and csv file"
    exit
fi

file=$1
underscore='_'
dot='.'
currentString=''
currentIndex=0;
benchmarkName=''
tableSize=''
bufferSize=''

for (( i=0; i<${#file}; i++ )); do
  if [ "${file:$i:1}" = "$dot" ] 
    then
      break
  fi
  if [ "${file:$i:1}" = "$underscore" ] 
    then
    if [ "$currentIndex" -eq 0 ]
      then
        benchmarkName=$currentString
	currentString=''
	currentIndex=1
      else
        tableSize=$currentString
	currentString=''
    fi
    
    else 
      currentString=$currentString${file:$i:1}
  fi
done

bufferSize=$currentString

csv=$2
l1_misses=""
l1_miss_rate=""
l1_accesses=""
l2_misses=""
l2_miss_rate=""
l2_misses=""
stride_hits=""
markov_hits=""
IPC=""
while IFS='' read -r line || [[ -n "$line" ]]; do
	arr=( $line );
	name=${arr[0]};
	next=${arr[1]};
	
	dl1Misses='dl1.misses';
	dl1MissRate='dl1.miss_rate';
	dl1Accesses='dl1.accesses';
	dl2Misses='ul2.misses';
	dl2MissRate='ul2.miss_rate';
	dl2Accesses='ul2.accesses';
	markovHits='sim_number_prefetch_buffer_hits';
	strideHits='sim_number_prefetch_cache_hits';
	SIM_IPC='sim_IPC';

	if [ "$name" = "$dl1Misses" ];
	then
		l1_misses="$next"
	fi

	if [ "$name" = "$dl1MissRate" ];
	then
		l1_miss_rate="$next"
	fi

	if [ "$name" = "$dl1Accesses" ];
	then
		l1_accesses="$next"
	fi

	if [ "$name" = "$dl2Misses" ];
	then
		l2_misses="$next"
	fi

	if [ "$name" = "$dl2MissRate" ];
	then
		l2_miss_rate="$next"
	fi

	if [ "$name" = "$dl2Accesses" ];
	then
		l2_accesses="$next"
	fi

	if [ "$name" = "$markovHits" ];
	then
		markov_hits="$next"
	fi

	if [ "$name" = "$strideHits" ];
	then
		stride_hits="$next"
	fi

	if [ "$name" = "$SIM_IPC" ];
	then
		IPC="$next"
	fi
done < "$file"

echo "$benchmarkName,$tableSize,$bufferSize,$l1_accesses,$l1_misses,$l1_miss_rate,$l2_accesses,$l2_misses,$l2_miss_rate,$stride_hits,$markov_hits,$IPC" >> $csv


