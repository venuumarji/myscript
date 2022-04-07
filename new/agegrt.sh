#!/bin/bash
echo "enter the file name"
read name
while read line
do
	age=`echo $line | awk '{print $NF}'`
	if [ $age -gt 60 ]
	then
		echo $line | awk '{print $1}'
	fi
done < $name

