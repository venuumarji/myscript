#!/bin/bash
echo "Enter value to find n numbers sum"
read a
res=0
while [ $a -gt 0 ]
do 
	res=`expr $a + $res`
	a=`expr $a - 1`
done
echo "Sum of first n given numbers is $res"
