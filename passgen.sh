#!/bin/bash

############################################################
#                                                          #
# Password Generator                                       #
# With options                                             #
#                                                          #
############################################################

############################################################
# Help                                                     #
############################################################
Help()
{
   # Display Help
   echo "Add description of the script functions here."
   echo
   echo "Syntax: scriptTemplate [-g|h|v|V]"
   echo "options:"
   echo "g     Print the GPL license notification."
   echo "h     Print this Help."
   echo "v     Verbose mode."
   echo "V     Print software version and exit."
   echo
}

############################################################
# Main program                                             #
############################################################

if [[ "$#" -eq 0 || "$1" == "--help" ]]
then
    echo "Usage: $0 LENGTH"
    echo " will create a password of LENGTH"
    exit 1
fi
