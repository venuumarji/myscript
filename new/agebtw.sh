#!/bin/bash
echo "enter the file name"
read file
while read line
do 
	age=`echo $line | awk '{print $NF}'`
	if [ $age -ge 50 -a $age -le 60 ]
	then
		echo $line | awk '{print $1}'
	fi
done < $file

