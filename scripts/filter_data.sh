#!/bin/bash
# sed '1d' $input_file >> temp #to remove first line and redirect remaining data to 'temp' which can be used as input to while : done < temp : better can avoid 2 if loops

echo Enter age to be filtered
read i
echo Enter data file full path
read j
num=(0)
echo Employees over $i are:
while read var
do
	if [ $num -gt 0 ]
	then
		val1=`echo $var | awk -F " " '{print$3}'`
			if [ $val1 -gt $i ];
			then
				#echo employees over age $i are
				echo $var|cut -d " " -f1
			fi
	fi
	num=`expr $num + 1`
	done < $j
