#!/bin/bash
#set -x
num=`wc -l $1 | cut -d " " -f1`
#echo $num
while [ $num -gt 0 ];
do
	echo `cat $1 | head -$num | tail -1`
	#echo $lastline
	num=`expr $num - 1`
done
