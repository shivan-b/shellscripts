#! /bin/bash

if [ $1 -gt $2 ] && [ $1 -gt $3 ] && [ $2 -ne $3 ];
then
	echo $1 is the Biggest
elif [ $2 -gt $1 ] && [ $2 -gt $3 ] && [ $1 -ne $3 ];
then
	echo $2 is the Biggest
elif [ $3 -gt $1 ] && [ $3 -gt $2 ] && [ $1 -ne $2 ];
then
	echo $3 is the Biggest
elif [ $1 -eq $2 ] || [ $2 -eq $3 ] || [ $3 -eq $1 ];
then
	echo two numbers are equal
fi
