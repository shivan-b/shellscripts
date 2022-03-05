#!/bin/bash
#to check if a given name is a file or directory
#set -x
var=$1
#var2=`ls -l $var| grep -n '^-'| awk -F " " '{printNF}'`

if [ $# == 0 ];
then 
	echo please enter file or directory path
	exit;
fi

if [ -f $var ];
then
	echo this is a file
	cat -e "$var"
	echo 'The characters, words and lines in the file respectively are'
	wc -w -c -l $var | awk -F " " '{print$(NF-1),$(NF-2),$(NF-3)}'
elif [ -d $var ];
then
	echo -e 'This is a directory, files present in this directory are:'
	#echo $var2
	ls -l $var | grep -n '^-' | awk -F " " '{print$(NF)}'
else
	echo file/directory doesn\'t exist please enter complete path
fi
