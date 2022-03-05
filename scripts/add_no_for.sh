#!/bin/bash
nums="2 5 7 9 4"
sum="0"
for i in $nums
do
	sum=` expr $sum + $i`
done
	echo sum is $sum
