#!/bin/bash
day=Sat #`date | cut -d " " -f1`
case $day in
	Mon) cp ~/scripts/data/*.* ~/scripts/data2/
		;;
	Tue|Wed) cp ~/scripts/data/*.* ~/scripts/temp/
		;;
	Thu|Fri) mv ~/scripts/data/*.* ~/scripts/renamed/
		;;
	Sat|Sun) rm ~/scripts/data/*.log
esac
