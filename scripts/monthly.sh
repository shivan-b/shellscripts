#!/bin/bash

if [ $(date -d +1day "+%d") -eq 01 ];
then
	echo will print on last day
else
	echo not yet
fi
