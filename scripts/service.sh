#!/bin/bash
#set -x
services="apache jenking httpd sshd"
for i in $services
do
	allserv=`ps -ef |grep -v grep|grep $i`
	Result=`echo allserv | grep $i`
	#echo $i
	#echo $allserv
	if [ "$Result" == "" ];
	then
		echo 'Action reqd' | mail -s "Action reqd" -c "xyz@gmail.com" "abc@gmail.com"
		echo trying to restart $i
		sudo service $i start
	else
		echo 'service is running'
	fi
done
