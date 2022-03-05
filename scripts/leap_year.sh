#!/bin/bash

if [ ` expr $1 % 4` -eq 0 ] && [ ` expr $1 % 100 ` -ne 0 ];
then
	echo $1 is a leap year
elif [ ` expr $1 % 100` -eq 0 ] && [ ` expr $1 % 400 ` -eq 0 ];
then
	echo $1 is a leap year
else
	echo $1 is not a leap year
fi
