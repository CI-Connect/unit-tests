#!/bin/bash

#if [ "$#" -ne 1 ]
 #  then echo "Usage: ./pegasus_wait.sh [pegasus wfdir]"
  # exit
#fi

echo 'pegasus-monitord still running. Please wait for it to complete.' > file1.txt 

WFDIR=$(./submit | grep pegasus-status | cut -f8 -d' ')

c=1
while [ $c -le 5 ]
do
    pegasus-statistics $WFDIR 2> output.txt
    if diff file1.txt output.txt >/dev/null;
       then continue
    else 
       break 
    fi
done

pegasus-analyzer $WFDIR | tail -4