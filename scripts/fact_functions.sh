#!/bin/bash
nums="3 4 5"

fact(){
	fact1='1'
	num=$i
	var=$i
	while [ $var -gt 0 ];
	do
		fact1=` expr $var \* $fact1`
		var=` expr $var - 1`	
	done
	echo The factorial of $num is $fact1
}


add(){
	sum='0'
	num3=`expr $i + 1 `
	var2=$i
	while [ $var2 -gt 0 ];
	do
		sum=`expr $sum + $var2`
		var2=`expr $var2 - 1`
	done
	echo The sum of all nums less than $num3 is $sum
}

for i in $nums
do
	fact $i
	add $i
done

#for i in $nums
#do
#        add $i
#done

