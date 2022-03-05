#!/bin/bash
i=0
max=0
echo size?
read num
echo enter numbers
while [ $i -lt $num ];
do
	read nums
	if [ $nums -gt $max ];
	then
		max=$nums
	fi
	i=`expr $i + 1`
done
echo The biggest number is $max
