#!/bin/bash
ls | grep -i sh$ > chngop
while read line
do
	name=`echo $line | awk -F "." '{print $1}'`
	mv $name.sh $name.txt
done < chngop
ls | grep -i txt$
