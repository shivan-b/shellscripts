#!/bin/bash
#set -x
echo no of rows
read num
i=0
j=0
while [ $i -lt $num ];
do
	j=0
	while [ $j -lt $i ] || [ $j -eq $i ];
	do
		echo -n `expr $j + 1`
		j=`expr $j + 1`
	done
	#j=0
	echo
	i=`expr $i + 1`
done
