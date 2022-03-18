#!/bin/bash

############################################################
#                                                          #
# Backup-inator                                            #
# With options                                             #
#                                                          #
############################################################

echo " "
echo "***************************************"
echo "** Jamsbot's File Backup'inator"
echo "***************************************"
echo " "

today=$(date)

echo "** we will back up some stuff now"
echo " "
echo "** Please name the directorypath from user ie /home/user/SOME/OTHER/DIR"
read working_dir
echo "** please type the file derectory to be backed-up"
read todo_list

#todo_list=todo_list
#todo_list=$(ls $todo)
#echo "$todo_list"

if [ ! -d "$backups"]; then
    echo "dir present"
else
    mkdir backups
    echo "** creating a backup directory"
fi

for i in $todo_list
  do
    tar -cf ~/$working_dir/backups/$i$(date -I).tar $i
      echo " ... ok, file $i has been added"
  done

echo " "
echo "***************************************"
echo "** Back up Complete Have a nice day"
echo "***************************************"
echo " "
