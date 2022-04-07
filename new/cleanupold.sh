#!/bin/bash
#echo "enter no of files to be cleaned"
#read num
ls -lrt | awk 'NR>1 {print $NF}' > output
total=`cat output | wc -l`
while read line
do
	if [ $total -gt 2 ]
	then
		#rm -rf $line
 		echo $line
		total=`expr $total - 1`
	fi
done < $output

