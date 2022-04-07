#!/bin/bash
echo "$0"
echo "$1"
echo "$2"
echo "$3"
echo "Enter the first integer $1"
echo "Enter the second integer $2"
echo "Enter the third integerr $3"
sum=`expr $1 + $2 + $3`
mult=`expr $1 \* $2 \* $3`
div=`expr $1 / $2 / $3`
echo -e "Sum of $1,$2 & $3 is $sum \nProduct of $1,$2&$3 = $mult \nReminder of $1,$2&$3 = $div"
