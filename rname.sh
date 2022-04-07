#!/bin/bash
ls | grep -i txt$ > op1
while read line
do
	name=`echo $line | awk -F "." '{print $1}'`
	mv $name.txt $name.sh
done < op1
ls | grep -i sh$
