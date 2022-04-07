#!/bin/bash
echo "enter the file name"
read name
while read line
do
	age=`echo $line | awk '(NR>1) {print $NF}'`
	if [ $age -gt 40 ]
	then
		echo $line | awk '(NR>1) {print $1}'
	fi
done < $name

