#!/bin/bash

############################################################
#                                                          #
# Password Generator                                       #
# With options                                             #
#                                                          #
############################################################

Help() {
   # Display Help
   echo "Password Generator."
   echo
   echo "Syntax: scriptTemplate [-g|h|v|V]"
   echo "options:"
   echo "g     Print the MIT license notification."
   echo "h     Print this Help."
   echo "i     Choose a password length, with the defualt being 12"
   echo "V     Print software version and exit."
   echo
}

License() {
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

Version() {
   echo
   echo "############################################################"
   echo "#      Password Generator                                  #"
   echo "#      With options                                        #"
   echo "#      V_passgen_0.1.2                                     #"
   echo "############################################################"
   echo
}

declare -i intNum=20
# Get the options
while getopts ":ghiV" option; do
   case $option in
      g) # display Help
         License
         exit;;
      h) # display Help
         Help
         exit;;
      i) # Enter a number
         intNum=$OPTARG;;
      V) # display Help
         Version
         exit;;
     \?) # Invalid option
         echo "Error: Invalid option type -h for help"
   esac
done

chars=qwertyuiopasdfghjklzxcvbnmQWERTYUIOPASDFGHJKLZXCVBNM1234567890!£$%^

for i in $(seq 1 $intNum) ; do
    echo -n "${chars:RANDOM%${#chars}:1}"
done

echo
