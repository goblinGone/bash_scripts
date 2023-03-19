#
#   simple backup script
#   runs through the listed folders adding to a compressed file
#

#!/bin/bash
echo " "
echo "***************************************"
echo "** Jamsbot's File Backup'inator"
echo "***************************************"
echo " "

now=`date +"%Y-%m-%d"`

tar -cvjf system_backup_${now}.tar.gz ~/BIN_REG ~/CAD/parts ~/CAD/projects ~/CodeBase/__non_cloud_sync ~/CodeBase/Arduino ~/Documents ~/Downloads ~/Project_archive 

echo "Selected files have been archived!"

echo " "
echo "***************************************"
echo "** Back up Complete Have a nice day"
echo "***************************************"
echo " "
exit
