#!/bin/bash
echo $*
echo $#
echo $?
echo $!
echo $$

function_sum(){
	Sum=` expr $1 + $2 `
	echo sum is $Sum
}
function_sub(){
	if [ $1 -gt $2 ];
	then
		sub=` expr $1 - $2` 
		echo Difference is $sub
	else
		sub=`expr $2 - $1`
		echo Difference is $sub
	fi
}
function_div(){
	if [ $1 -gt $2 ] && [ $2 -ne 0 ];
	then
		div=` expr $1 / $2 `
		echo quotient is $div
	elif [ $2 -gt $1 ] && [ $1 -ne 0 ];
	then
		div=` expr $2 / $1 `
		echo quotient is $div
	else
		echo enter non-zero value
	fi
}
function_mul(){
		mul=` expr $1 \* $2 `
		echo multiple is $mul
}


function_sub $1 $2
function_mul $1 $2
function_div $1 $2
function_sum $1 $2
