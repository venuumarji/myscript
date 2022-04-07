#!/bin/bash
echo "enter no of files to be cleaned"
read num
ls -lrt | awk 'NR>1 {print $NF}' > op1
total=`cat op1 | wc -l`
while read line
do
	if [ $total -gt $num ]
	then
		echo $line
		#rm -rf $line
		total=`expr $total - 1`
	fi

done < op1

