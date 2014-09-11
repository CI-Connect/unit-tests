prologue
--------
  $ cp -a ${TESTDIR}/../../tutorial-scaling .
  $ cd tutorial-scaling

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

Python files
------------
  $ ./SDE.py
  Traceback (most recent call last):
    File "./SDE.py", line 14, in <module>
      Temp=float(argv[1])       # configurational Temperature
  IndexError: list index out of range
  [1]

  $ ./SDE.py 0.25 500000
  Temp=0.250000*Trans=*, Elapsed time:* (glob)

  $ ./SDE-2.py
  Traceback (most recent call last):
    File "./SDE-2.py", line 15, in <module>
      Temp=float(argv[1])       # configurational Temperature
  IndexError: list index out of range
  [1]

  $ ./SDE-2.py 0.25 500000
  Temp=0.250000*Trans=*, Elapsed time:* (glob)

condor jobs
-----------

Copy some extra utilities to the unit test directory
  $ cp ${TESTDIR}/../../run_and_wait.sh .

run campus.submit with condor:
  $ ./run_and_wait.sh campus.submit
  All jobs done.

run osg.submit with condor:
  $ ./run_and_wait.sh osg.submit
  All jobs done.

run anywhere.submit with condor:
  $ ./run_and_wait.sh anywhere.submit
  All jobs done.