#!/bin/bash
echo "enter the file name"
read name
line_num=1
while read line
do 
	a=`echo $line | wc -c`
	echo "no of characters in $line_num is $a"
	a=`expr $line_num + 1`
done < $name 
