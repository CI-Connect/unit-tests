#!/bin/bash

if [ "$#" -ne 1 ]
   then echo "Usage: ./pegasus_wait.sh [pegasus wfdir]"
   exit
fi

echo 'pegasus-monitord still running. Please wait for it to complete.' > file1.txt 

c=1
while [ $c -le 5 ]
do
    pegasus-statistics $1 2> output.txt
    if diff file1.txt output.txt >/dev/null;
       then continue
    else 
       break 
    fi
done

pegasus-analyzer $1 | tail -4