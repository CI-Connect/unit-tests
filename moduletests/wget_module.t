Prologue
--------
  $ cd ${TESTDIR}/wget

Run test job
------------
Copy some extra utilities to the unit test directory
  $ cp ${TESTDIR}/../run_and_wait.sh .

run check_wget.submit through condor
  $ ./run_and_wait.sh check_wget.submit
  All jobs done.
