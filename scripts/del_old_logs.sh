#!/bin/bash
set -x

total=`ls $1 | wc -l`
del=`expr $total - 20 `

echo $total

while [ $total -gt 20 ];
do
	todel=`ls -t $1 | tail -1` #| axargs find /home/ec2-user/ -iname |xargs rm #|xargs find -type f ` #xargs realpath` # | xargs rm`
	
	echo $todel
	
	delete= find /home/ec2-user/ -iname $todel |xargs rm	 #|Qcut -c2- #| awk -F "\\" '{print$1}' #|xargs cd
								 #rm $delete
	total=`expr $total - 1`
done
	#echo $todel
	#for i in $todel
	#do
	#	path=`$todel | tail -1 | xargs realpath`
	#	echo $path
	#	rm $path
	#done
#fi
