#!/bin/bash

if [ $# -ne 1 ]
  then
    echo "Need 1 argument: file to parse"
    exit
fi

file=$1
l1_misses=""
l1_miss_rate=""
l1_accesses=""
while IFS='' read -r line || [[ -n "$line" ]]; do
	arr=( $line );
	name=${arr[0]};
	next=${arr[1]};
	
	dl1Misses='dl1.misses';
	dl1MissRate='dl1.miss_rate';
	dl1Accesses='dl1.accesses';

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
done < "$file"

echo "$file,$l1_accesses,$l1_misses,$l1_miss_rate" >> default_data.csv


