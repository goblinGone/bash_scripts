#!/bin/bash
if [[ "$#" -eq 0 || "$1" == "--help" ]]
then
    echo "Usage: $0 DELAY"
    echo " to pause for DELAY seconds"
    exit 1
fi

echo "busy for $1 sec..."

# loop of many short sleeps instead of single sleep
for ((i=1; i<$1*10; i++)) do
  sleep 0.1
#  echo $i
done

echo "...done"
