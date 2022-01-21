#!/bin/bash

PI=_F2561696
echo "*************************************************************"
echo "** We will compress some files that can be uploaded to the OU"
echo "** The end result will be saved to the Documents directory"
echo "*************************************************************"
echo "** Please name the working directory"
read work_dir
echo "Please name the file to be zipped"
read file_name

zip  $file_name$PI $file_name/
# -cgv -f ~/Documents/$file_name$PI.zip ~/$working_dir/$file_name
echo "** ok, your file $file_name has been added, good luck."



#gv -f ../Home/Documents/$i$PI.zip ~/$working_dir/$i
