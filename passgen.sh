#!/bin/bash

echo "***************************************"
echo "** Jamsbot's Password Generator"
echo "***************************************"

if [[ "$#" -eq 0 || "$1" == "--help" ]]
then
    echo "Usage: $0 LENGTH"
    echo " will create a password of LENGTH"
    exit 1
fi
