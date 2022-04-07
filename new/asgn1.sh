#!/bin/bash
echo "Enter the value for first integer"
read a
echo "Enter the value for second integer"
read b
echo "Enter the value for third integer"
read c
sum=`expr $a + $b + $c`
mult=`expr $a \* $b \* $c`
div=`expr $a / $b / $c`
echo -e "Sum of $a,$b and $c is $sum \nProduct of $a,$b and $c is $mult \nDivision of $a,$b & $c is $div"
