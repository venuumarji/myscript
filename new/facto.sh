#!/bin/bash
echo "Enter value to find factorial"
read num
res=1
while [ $num -gt 1 ]
do 
	res=`expr $num \* $res`
	num=`expr $num - 1`
done
echo "Factorial of given number is $res"
