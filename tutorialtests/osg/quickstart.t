prologue
--------
  $ cp -a ${TESTDIR}/tutorial-quickstart .
  $ cd tutorial-quickstart

short.sh
--------

run short.sh without parameters:
  $ ./short.sh 
  Start time: * (glob)
  Job is running on node: * (glob)
  Job running as user: * (glob)
  Job is running in directory: * (glob)
  
  Working hard...
  Science complete!

run short.sh with parameters:
  $ ./short.sh 1
  Start time: * (glob)
  Job is running on node: * (glob)
  Job running as user: * (glob)
  Job is running in directory: * (glob)
  
  Working hard...
  Science complete!


condor jobs
-----------

Copy some extra utilities to the unit test directory
  $ cp ${TESTDIR}/run_and_wait.sh .

run the tutorial with condor:
  $ ./run_and_wait.sh tutorial01
  All jobs done.

run the second tutorial with condor:
  $ ./run_and_wait.sh tutorial02
  All jobs done.

run the third and final tutorial:
  $ ./run_and_wait.sh tutorial03
  All jobs done.

