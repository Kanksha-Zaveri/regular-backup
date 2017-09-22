#!/bin/bash
backupFrom="/home/kanksha"
mkdir backup
done="yay"
backupTo="$backupFrom/backup"
while [ true ]; do
	cd $backupTo
	tar -czvf homebackup-$(date +"%Y%m%d_%H%M%S").tar.gz $backupFrom --exclude=$backupTo 
	echo $done
	cd ..
	sleep 180
done
