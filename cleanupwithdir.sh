#!/bin/bash
echo "Enter directory"
read dir
cd /home/ubuntu/$dir
echo "enter no of files to be cleaned"
read num
ls -lrt | awk 'NR>1 {print $NF}' > ab
total=`cat ab | wc -l`
while read line
do
	if [ $total -gt $num ]
	then
		#rm -rf $line
		echo $line
		total=`expr $total - 1`
	fi
done < ab

