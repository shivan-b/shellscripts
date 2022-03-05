#!/bin/bash
function_one()
{
if [ $1 -eq 10 ];
then
	echo $1 is equal to 10
fi
}

function_two()
{
if [ $1 -gt $2 ];
then
	echo $1 is greater than $2
else
	echo "$2 is greater than $1"
fi
}

function_three()
{
if [ $1 -eq $2 ];
then
	echo "$1 is equal to $2"
fi
}

function_one $1 $2
function_two $1 $2
function_three $1 $2
