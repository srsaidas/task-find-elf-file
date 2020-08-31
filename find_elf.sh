#!/bin/bash

if [ $# -le 0 ]
then
		echo "Not enough number of arguments "
		exit 0
fi

for i in $(ls -S ${1})
do
		grep -q -b -r -i elf ${1}/$i
		if [ $? -eq 0 ]
		then
				#Finding size of file
				mysize=$(find ${1}/$i -printf "%s")
				echo $i, $mysize "bytes"
		fi

done
