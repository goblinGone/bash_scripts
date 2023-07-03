#!/bin/bash

#creates a bunch of files and folders for testing

mkdir  testing1 testing2 testing3 testing4 testing5 testing6 testing7 testing8

cnt=0
dir=$(pwd)
result=${PWD##*/}

for i in $dir/*
do 
    if [ -d "$i" ]
    then 
        cd $i
        ((cnt=cnt+1))
        mkdir testing$cnt
        echo $cnt

        dir2=$(pwd)
        
        for j in $dir2/*
        do 
            cd $j
            touch file1.md file2.md file3.md file4.md file5.md file16.md file7.md file8.md file9.md
        done



    fi
done