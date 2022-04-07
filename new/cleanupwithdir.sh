#!/bin/bash
echo "enter directory"
read dir
cd /home/ubuntu/practice/$dir
echo "enter no of files to be cleaned"
read num
ls -lrt | awk 'NR>1 {print $NF}' > output
#total=`cat output | wc -l`
while read line
do
	echo $line
done < $output

