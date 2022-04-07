#!/bin/bash
echo "enter the string"
read string
length=${#string}
rev=""
while [ $length -gt 0 ]
do
	char=`echo $string | cut -c $length `
	length=`expr $length - 1`
	rev=$rev$char
done
echo "$rev"
