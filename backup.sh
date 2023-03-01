#!/bin/bash
echo " "
echo "***************************************"
echo "** Jamsbot's File Backup'inator"
echo "***************************************"
echo " "

now=`date +"%Y-%m-%d"`

tar -cvjf system_backup_${now}.tar.gz ~/CAD/parts ~/CAD/projects ~/CodeBase ~/Documents ~/Library ~/Project_archive ~/Templates

echo "Selected files have been archived!"

echo " "
echo "***************************************"
echo "** Back up Complete Have a nice day"
echo "***************************************"
echo " "
exit
