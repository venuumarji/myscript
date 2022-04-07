#!/bin/bash
echo "enter the file name"
read file
while read line
do 
	age=`echo $line | awk '(NR>1) {print $NF}'`
	if [ $age -ge 30 -a $age -le 50 ]
	then
		echo $line | awk '{print $1}'
	fi
done < $file

