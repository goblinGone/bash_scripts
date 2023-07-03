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
        cd $i
        echo -e ${txtblu}$(basename "$i")${txtwht}
        echo $i
        mkdir ~/backup_$now/$i

        #tar -cvf $i.tar ~/backup_$now/$i

        dir2=$(pwd)
        cd ..
        # for j in $dir2/* 
        # do
            
        #     if [ -d "$j" ]
        #     then
        #         cd $j
        #         echo -e ${txtcyn}$(basename "$j")${txtwht}
        #         tar -cvf $j.tar $j 
        #         cd ..

        #     elif [ -f "$j" ] 
        #     then 
        #         cd $j
        #         echo -e ${txtylw}$(basename "$j")${txtwht} 
        #         tar -cvf $jfiles.tar $j 
        #         cd ..
        #     fi
        # done
    elif [ -f "$i"  ] 
    then

        echo -e ${txtylw}$(basename "$i")${txtwht}
        #tar -cvfP $temp.tar $j   

    fi
done


