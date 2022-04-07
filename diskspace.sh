#!/bin/bash
size=`df -h . | awk 'NR==2 {print $(NF-1)}' | sed 's/%//g'`
if [ $size -gt 30 ]
then
	echo "The disk space has reached threshold limit"
	mail -s "Maximum threshold $size reached" venu.umarji@gmail.com,harshitha.mit@gmail.com
fi
