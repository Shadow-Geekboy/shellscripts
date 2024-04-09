#!/bin/bash
#This script backs up a dirctory of your choice

echo -e "What directory do you want to backup?-->\c"
read ANS

echo "Performing backup......"
sleep 3
FILE=`echo $ANS | sed s#/#-#g`
DATE=`date +%F`
tar -zcvf ~/backupfile.tar.gz $ANS

echo "Backup complete successfully to ~/backup-$FILE-$DATE.tar.gz"
