Prologue
--------
  $ cp -a ${TESTDIR}/tutorial-octave .
  $ cd tutorial-octave

Software setup
-------------

  $ source /cvmfs/oasis.opensciencegrid.org/osg/palms/sw/octave/el5/x86_64/default/setup.sh
  $ palmsdosetup octave
  $ octave 
  GNU Octave, version 3.6.4
  Copyright (C) 2013 John W. Eaton and others.
  This is free software; see the source code for copying conditions.
  There is ABSOLUTELY NO WARRANTY; not even for MERCHANTABILITY or
  FITNESS FOR A PARTICULAR PURPOSE.  For details, type `warranty'.
  Octave was configured for "x86_64-unknown-linux-gnu".

  Additional information about Octave is available at http://www.octave.org.

  Please contribute if you find this software useful.
  For more information, visit http://www.octave.org/get-involved.html

  Read http://www.octave.org/bugs.html to learn how to submit bug reports.

  For information about changes from previous versions, type `news'.

  warning: X11 DISPLAY environment variable not set
  warning: readline is not linked, so history control is not available
  octave:1> quit()

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

HTCondor job
------------
Copy some extra utilities to the unit test directory
  $ cp ${TESTDIR}/run_and_wait.sh .

run octave.submit through condor
  $ ./run_and_wait.sh octave.submit
  All jobs done.