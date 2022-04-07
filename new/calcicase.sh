#!/bin/bash
echo -e "Enter 1 for addition \nEnter 2 for Subtraction \nEnter 3 for multiplication \nEnter 4 for division \n Enter 5 for factorial \n Enter 6 for reverse of number"
echo "Enter the first value"
read a
echo "Enter second value"
read b
echo "Enter process number to be carried"
read var
case $var in
	1)
		sum=`expr $a + $b`
		echo "sum of $a & $b is $sum"
		;;
	2)
		sub=`expr $a - $b`
		echo "subtraction of $a & $b is $sub"
		;;
	3)
		mul=`expr $a \* $b`
		echo "multiplication of $a & $b is $mul"
		;;
	4)
		div=`expr $a / $b`
		echo "reminder of $a & $b is $div"
		;;
	5)
		array="$a $b"
		for i in $array
		do
			res=1
			temp=$i
			while [ $i -gt 0 ]
			do
				res=`expr $i \* $res`
				i=`expr $i - 1`
			done
			echo "Factorial of $temp is $res"
		done
		;;
	6)
		array="$a $b"
		len=${#array}
		rev=""
		for i in $array
		do
			temp=$i
			while [ $len -gt 0 ]
			do
			char=`echo $array | cut -c $len`
			len=`expr $len - 1`
			rev=$rev$char
			i=`expr $i - 1`
		done
		done
		echo "Reverse string is $rev"
		;;
	*)
		echo "The process entered is not present"
		;;
esac
