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
   echo "Syntax: passgen {args} [-g|h|i|v]"
   echo " "
   echo "options:"
   echo " -c     Use no special characters or numbers"
   echo " -g     Print the MIT license notification."
   echo " -h     Print this Help."
   echo " -l     Choose a password length, with the defualt being 12"
   echo " -n     Use no special characters BUT use numbers"
   echo " -v     Print software version and exit."
   echo " -V     Verbose mode"
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
   echo "#      passgen_0.1.4                                       #"
   echo "############################################################"
   echo
}

console_spam() {
   local MESSAGE="${@}"
   if [[ "${VERBOSE}" == true ]];then
      echo "${MESSAGE}"
   fi
}

#exit if incorrectly used
if [[ "$#" -eq 0 ]]
then 
   echo "   usage: ./$(basename $0) {args}"
   echo "          use ./$(basename $0) -h for help"
   exit 1
fi 


LENGTH=12

optstring=":cghlnvV"

while getopts ${optstring} arg; do
   case "${arg}" in
      c) SPEC_CHAR='true' ;;
      g) License ;;
      h) Help ;;
      l) LENGTH="${OPTARG}" ;;
      n) Nums='true' ;;
      v) Version ;;
      V) VERBOSE='true' 
      console_spam "Verbose mode activated"
      ;;
     \?) echo "Error: Invalid option: -${OPTARG}"
         echo "type -h for help" ;;
   esac
done

CHARS=qwertyuiopasdfghjklzxcvbnmQWERTYUIOPASDFGHJKLZXCVBNM1234567890

console_spam "working"

for (( j=1; j<=$LENGTH; j++))
do
echo -n "${CHARS:RANDOM%${#CHARS}:1}"
done
echo

console_spam "end"


