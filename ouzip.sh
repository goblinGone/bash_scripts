#!/bin/bash

############################################################
#                                                          #
# OU Zipper + extension checker                            #
# With options                                             #
#                                                          #
############################################################

#the OU student number
Help()
{
   # Display Help
   echo " "
   echo " Open University file zipper and extension checker."
   echo " Will Zip a file ready for uploading, primarily for TMA submissions"
   echo " "
   echo " Syntax: scriptTemplate [-g|h|v|V]"
   echo " "
   echo " options:"
   echo " -g     Print the MIT license notification."
   echo " -h     Print this Help."
   echo " -V     Print software version and exit."
   echo
}
License()
{
   echo "MIT License"
   echo
   echo "Copyright (c) [year] [fullname]"
   echo
   echo "Permission is hereby granted, free of charge, to any person obtaining a copy"
   echo "of this software and associated documentation files (the "Software"), to deal"
   echo "in the Software without restriction, including without limitation the rights"
   echo "to use, copy, modify, merge, publish, distribute, sublicense, and/or sell"
   echo "copies of the Software, and to permit persons to whom the Software is"
   echo "furnished to do so, subject to the following conditions:"
   echo
   echo "The above copyright notice and this permission notice shall be included in all"
   echo "copies or substantial portions of the Software."
   echo
   echo "THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR"
   echo "IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,"
   echo "FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE"
   echo "AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER"
   echo "LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,"
   echo "OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE"
   echo "SOFTWARE."
   echo
}
Version()
{
   echo
   echo   "     ############################################################"
   echo   "     #      OU Zipper + extension checker                       #"
   echo   "     #      With options                                        #"
   echo   "     #      OUZIP_0.1.2                                         #"
   echo   "     ############################################################"
   echo
}

# Get the options
while getopts ":ghV" option; do
   case $option in
      g) # display Licence
         License
         exit;;
      h) # display Help
         Help
         exit;;
      V) # display Help
         Version
         exit;;
     \?) # Invalid option
         echo "Error: Invalid option type -h for help"
         exit;;
   esac
done

if [[ "$#" -eq 0 || "$1" == "--help" ]]
then
    echo " "
    echo "    Usage: add -h to view the help options"
    echo " "
    exit 1
fi

echo " "
