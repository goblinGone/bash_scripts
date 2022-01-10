#!/bin/bash

today=$(date)

echo "we will now compile a C++ file, Please select the file or files to be compiled"

read todo_list

echo "Please type a name, for the compiled file"

read file_name

for i in $todo_list
do
g++ -Wall -std=c++17 $i -o $file_name$(date -I)
	echo "oki, file $i is done"
done

echo "ok, have a nice day"
