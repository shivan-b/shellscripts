#!/bin/bash
#to find n! and sum of all numbers less than n, including n
#set -x
echo  enter number
read num
num1=` expr $num + 1`
sum=0
j=$num
fact=1
i=$num
while [ $i -gt 0 ];
do
	sum=`expr $sum + $i`
	i=`expr $i - 1`
done
echo The sum of all numbers less than $num1 is $sum

while [ $j -gt 0 ];
do
	fact=`expr $fact \* $j`	
	j=`expr $j - 1`
done
echo The factorial of $num is  $fact
