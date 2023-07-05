#!/bin/bash

# back up script
# 2023/07/04

array=()
now=`date +"%Y-%m-%d"`
dir=$(pwd)
result=${PWD##*/}

mkdir -p ~/backup_$now

for i in $dir/*  
do
    if [ -d $i ] 
    then
        temp=$(basename "$i")
        array+=($temp)
    else
        tar -vrf loose_files_$now.tar $i
        mv loose_files_$now.tar ~/backup_$now/
    fi        
done

for i in "${array[@]}"
do
    echo $i
    tar -vrf $i$now.tar $dir/$i
    mv $i$now.tar ~/backup_$now/
done


