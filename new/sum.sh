#!/bin/bash
echo "Enter the first value"
read a
echo "Enter the second value"
read b
sum=`expr $a + $b`
echo -e "**** \n Sum of $a + $b = $sum"
