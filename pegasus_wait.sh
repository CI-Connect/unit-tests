#!/bin/bash

echo 'Summary: 1 DAG total (Success:1)' > file1.txt

WFDIR=$(./submit | grep pegasus-status | cut -f8 -d' ')

c=1
while [ $c -le 5 ]
do
    pegasus-status $WFDIR | tail -1 1> output.txt
    if diff file1.txt output.txt >/dev/null;
       then break
    elif cat output.txt | grep Running >/dev/null;
       then continue
    else
       cat output.txt
       echo $WFDIR
       exit
    fi
done

pegasus-analyzer $WFDIR | tail -4 