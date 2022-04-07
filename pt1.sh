#!/bin/bash
echo "Type"
read a
echo "type"
read b
echo "type"
read c
echo "type"
read d
ans=`expr $a + $b / $c + $d`
echo "Answer = $ans"
