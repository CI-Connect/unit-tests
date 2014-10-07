Prologue
--------
  $ cp -a ${TESTDIR}/../../tutorial-root .
  $ cd tutorial-root

ROOT
----
  $ source ${TESTDIR}/../../tutorial-root/environment.sh > env.txt 2>&1 && make
  c++ -O2 -Wall -fPIC -pthread -m64 -I/cvmfs/atlas.cern.ch/repo/ATLASLocalRootBase/x86_64/root/5.34.21-x86_64-slc6-gcc47-opt/include   -c -o inspector.o inspector.C
  c++ -O2 -m64 inspector.o -L/cvmfs/atlas.cern.ch/repo/ATLASLocalRootBase/x86_64/root/5.34.21-x86_64-slc6-gcc47-opt/lib -lCore -lCint -lRIO -lNet -lHist -lGraf -lGraf3d -lGpad -lTree -lRint -lPostscript -lMatrix -lPhysics -lMathCore -lThread -pthread -lm -ldl -rdynamic  -lTreePlayer -o inspector
  inspector done

inspector
---------
  $ wget -q --no-check-certificate http://stash.osgconnect.net/+jenkins/ex1.root

wrapper.sh
----------
replace ROOT-FILE with example root file name
  $ sed 's/ROOT-FILE/ex1.root/' wrapper.sh > temp.sh 
  $ rm wrapper.sh 
  $ mv temp.sh wrapper.sh

comment out requirements
  $ sed 's/requirements/# requirements/' root.submit > temp.submit
  $ rm root.submit
  $ mv temp.submit root.submit

HTCondor jobs
-------------
Copy some extra utilities to the unit test directory
  $ cp ${TESTDIR}/../../run_and_wait.sh .

run root.submit with condor
  $ ./run_and_wait.sh root.submit
  All jobs done.

