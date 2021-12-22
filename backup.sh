#!/bin/#!/usr/bin/env bash
today=$(date)
mkdir home/pi/backups
echo "we will back up some stuff now"
echo "Please name the working directory"
read working_dir
echo "please list the files to be backed-up"
read todo_list
echo "what do you wish the file to be called?"
read file_name
for i in $todo_list
do
tar --create --gzip --verbose ~/$working_dir/$i --file=$file_name$(date -I).tar.gz -C /home/pi/backups
echo "ok, file $i has been added"
