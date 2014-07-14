#!/bin/bash

WFDIR=$(./submit | grep pegasus-status | cut -f8 -d' ')

c=1
while [ $c -le 5 ]
do
    pegasus-status $WFDIR | tail -1 1> output.txt
    if cat output.txt | grep Success >/dev/null;
       then break
    elif cat output.txt | grep Fail >/dev/null;
       then 
	echo "Pegasus submission failed. WFDIR: "
	echo $WFDIR
	exit
    else
	continue 
    fi
done

pegasus-analyzer $WFDIR | tail -4 