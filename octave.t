1;2cPrologue
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
make sure octave file works by checking part of output
  $ octave ex1_matrix.octave | tail -43 | head -5
  warning: X11 DISPLAY environment variable not set
  warning: readline is not linked, so history control is not available
  ans =
  
     *.* ? *.*i (glob)
     *.* ? *.*i (glob)
     *.* ? *.*i (glob)

  $ chmod +x octave-wrapper.sh

wrapper script
--------------
ensure fail state fails
  $ ./octave-wrapper.sh 
  Usage: octave-wrapper.sh file.octave
  [1]

ensure we can still run the code via the wrapper
  $ ./octave-wrapper.sh ex1_matrix.octave | tail -43 | head -5
  warning: X11 DISPLAY environment variable not set
  warning: readline is not linked, so history control is not available
  ans =
  
     *.* ? *.*i (glob)
     *.* ? *.*i (glob)
     *.* ? *.*i (glob)


HTCondor job
------------
Copy some extra utilities to the unit test directory
  $ cp ${TESTDIR}/run_and_wait.sh .

run octave.submit through condor
  $ ./run_and_wait.sh octave.submit
  All jobs done.
