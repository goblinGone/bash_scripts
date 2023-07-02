#!/bin/bash

txtblu='\e[0;34m'
txtcyn='\e[0;36m'
txtylw='\e[0;33m'
txtwht='\e[0;37m'

now=`date +"%Y-%m-%d"`
dir=$(pwd)
result=${PWD##*/}
mkdir ~/backup_$now
clear

for i in $dir/*  
do
    if [ -d "$i" ] 
    then
        echo -e ${txtblu}$(basename "$i")${txtwht}

        temp=$(basename "$i")
        mkdir ~/backup_$now/$temp

        cd $i

        dir2=$(pwd)
        
        for j in $dir2/* ; do
            if [ -d "$j" ]; then
                echo -e ${txtcyn}$(basename "$j")${txtwht}
            elif [ -f "$j" ] 
            then 
                echo -e ${txtylw}$(basename "$j")${txtwht} 
            fi
        done
    elif [ -f "$i" ] 
    then
        echo -e ${txtylw}$(basename "$i")${txtwht}   
    fi
done


