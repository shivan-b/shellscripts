#!/bin/bash
#set -x
if [ -f $1 ];
then
	echo This is a file
elif [ -d $1 ];
then
	echo This is a directory
elif [ -L $1 ];
then
	echo This is a Link
else
	echo The file doesn\'t exist
fi
