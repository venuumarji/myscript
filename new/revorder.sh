#!/bin/bash
echo "enter the file name"
read name
line=`cat $name | wc -l`
while [ $line -gt 0 ]
do
	head -$line $name | tail -1
	line=`expr $line - 1`
done 
