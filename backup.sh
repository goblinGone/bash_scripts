#!/bin/bash
today=$(date)
mkdir backups
echo "we will back up some stuff now"
echo "Please name the working directory"
read working_dir
echo "please list the files to be backed-up"
read todo_list
for i in $todo_list
do
tar -cgv -f ../pi/backups/$i$(date -I).tar.gz ~/$working_dir/$i
  echo "ok, file $i has been added"
done
echo "Back up complete, have a nice day"
