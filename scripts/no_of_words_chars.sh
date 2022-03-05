#!/bin/bash
num=1
echo Enter file name full path
read var2
while read var
do
	char=`echo $var | wc -c`
	word=`echo $var | wc -w`
	echo in line $num :::: chars=$char words=$word
	num=`expr $num + 1`
done < $var2
