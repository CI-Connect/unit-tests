Prologue
--------
  $ cp -a ${TESTDIR}/tutorial-root .
  $ cd tutorial-root

ROOT
----
  $ source ${TESTDIR}/tutorial-root/environment.sh | tail -13 | head -3 & make
  > ./inspector ex.root 
  * (glob)
  [2]
  0

inspector
---------
#  $ ./inspector ex.root
#  0

wrapper.sh
----------
replace ROOT-FILE with example root file name
#  $ sed 's/ROOT-FILE/ex.root/' wrapper.sh > temp.sh 
#  $ rm wrapper.sh 
#  $ mv temp.sh wrapper.sh

do the same for root.submit for later
#  $ sed 's/ROOT-FILE/ex.root/' root.submit > temp.submit
#  $ rm root.submit
#  $ mv temp.submit root.submit

#  $ chmod +x wrapper.sh

#  $ ./wrapper.sh
#  0

HTCondor jobs
-------------
Copy some extra utilities to the unit test directory
#  $ cp ${TESTDIR}/run_and_wait.sh .

run root.submit with condor
#  $ ./run_and_wait.sh root.submit
#  All jobs done.

