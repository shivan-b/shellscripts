#!/bin/bash
num="1 5 7 3 76 9 56 54"
echo ${num[@]:1}

<<com
for i in num
do
	for j in num
	do
		if [ $i -lt $j ];
		then
			num[$i]= 
com
