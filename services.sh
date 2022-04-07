#!/bin/bash
services="jenkins sshd ansible"
for i in $services
do
	ps -C $i
	if [ $? -ne 0 ]
	then
		echo "Process is not running" | mail -s "$i is not running" venu.umarji@gmail.com
	fi
done

		

