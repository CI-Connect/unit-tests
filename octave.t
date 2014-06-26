Prologue
--------
  $ cp -a ${TESTDIR}/tutorial-octave .
  $ cd tutorial-octave

Software setup
-------------

  $ source /cvmfs/oasis.opensciencegrid.org/osg/palms/sw/octave/el5/x86_64/default/setup.sh
  $ octave --version
  GNU Octave, version * (glob)
  Copyright (C) 201* (glob)
  This is free software; see the source code for copying conditions.
  There is ABSOLUTELY NO WARRANTY; not even for MERCHANTABILITY or
  FITNESS FOR A PARTICULAR PURPOSE.

  Octave was configured for * (glob)

  Additional information about Octave is available at http://www.octave.org.

  Please contribute if you find this software useful.
  For more information, visit * (glob)

  Read http://www.octave.org/bugs.html to learn how to submit bug reports.

example code
------------
  $ chmod +x octave-wrapper.sh

wrapper script
--------------
ensure fail state fails
  $ ./octave-wrapper.sh 
  Usage: octave-wrapper.sh file.octave
  [1]

HTCondor job
------------
Copy some extra utilities to the unit test directory
  $ cp ${TESTDIR}/run_and_wait.sh .

run octave.submit through condor
  $ ./run_and_wait.sh octave.submit
  All jobs done.
