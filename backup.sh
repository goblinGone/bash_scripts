#!/bin/bash

# back up script, creates a backup file mirroring current file structure
# places all backups in respective backup file 
# 2023/07/04

txtred='\e[0;31m'
txtblu='\e[0;34m'
txtcyn='\e[0;36m'
txtylw='\e[0;33m'
txtwht='\e[0;37m'

now=`date +"%Y-%m-%d"`
dir=$(pwd)
result=${PWD##*/}

mkdir -p ~/backup_$now

clear

echo -e ${txtred}"debug"${txtwht}

for i in $dir/*  
do

    if [ -d "$i" ] 
    then

        cd $i
        echo -e ${txtblu}$(basename "$i")${txtwht} #DEBUG
        tempi=$(basename "$i")
        mkdir -p ~/backup_$now/$tempi
        cd ..

        for j in $tempi/* 
        do
            
            if [ -d "$j" ]
            then

                cd $j
                echo -e ${txtcyn}$(basename "$j")${txtwht} #DEBUG
                tempj=$(basename "$j")
                mkdir -p ~/backup_$now/$tempi/$tempj                
                cd ..

                for k in tempj/*
                do
                    cd $k
                    echo $(basename "$k") #DEBUG
                    tempk=$(basename "$k")
                    cd ..

                done




            elif [ -a "$j" ] 
            then 

    #            cd $j
                mkdir -p ~/backup_$now/$tempi/_file
                tempj=$(basename "$j")
                echo -e ${txtylw}$(basename "$j")${txtwht} #DEBUG
                tar -cvf $tempj.tar $j
                mv $tempj.tar ~/backup_$now/$tempi/_file/ 
     #           cd ..

            fi
        done

    elif [ -a "$i"  ] 
    then
    
        mkdir -p ~/backup_$now/_file 
        tempi=$(basename "$i")
        echo -e ${txtylw}$(basename "$i")${txtwht}
        tar -cvf $tempi.tar $i
        mv $tempi.tar ~/backup_$now/_file/ 

    fi
done


