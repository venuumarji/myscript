#!/bin/bash
echo "enter first number"
read a
echo "enter second number"
read b
echo "enter third number"
read c
echo "enter fourth number"
read d
if [ $a -gt $b -a $a -gt $c -a $a -gt $d ]
then
	echo "$a is greater than $b,$c & $d"
elif [ $b -gt $a -a $b -gt $c -a $b -gt $d ]
then
	echo "$b is greater than $a,$c & $d"
elif [ $c -gt $a -a $c -gt $b -a $c -gt $d ]
then
	echo "$c is greater than $a,$b & $d"
else 
	echo "$d is greater than $a,$b & $c"
fi
