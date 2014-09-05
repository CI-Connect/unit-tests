prologue
--------
  $ cp -a ${TESTDIR}/../../tutorial-R .
  $ cd tutorial-R

Software setup
---------------
  $ source /cvmfs/oasis.opensciencegrid.org/osg/modules/lmod/5.6.2/init/bash
  $ module load R
  $ R --version
  R version 3.* (glob)
  Copyright (C) 2014 The R Foundation for Statistical Computing
  Platform: x86_64* (glob)
  
  R is free software and comes with ABSOLUTELY NO WARRANTY.
  You are welcome to redistribute it under the terms of the
  GNU General Public License versions 2 or 3.
  For more information about these matters see
  http://www.gnu.org/licenses/.
  

example code
------------
ensure that the probable still happens :)
  $ Rscript --no-save mcpi.R
  [1] 3.* (glob)


wrapper script
--------------
ensure fail state fails
  $ ./R-wrapper.sh 
  Usage: R-wrapper.sh file.R
  [1]
ensure we can still run the code via the wrapper
  $ ./R-wrapper.sh mcpi.R
  [1] 3.* (glob)

edit submit file
----------------
  $ sed 's;+ProjectName;#+ProjectName;' R.submit > new.submit
  $ mv new.submit R.submit

HTCondor job
-------------
Copy some extra utilities to the unit test directory
  $ cp ${TESTDIR}/../../run_and_wait.sh .
run the job through condor
  $ ./run_and_wait.sh R.submit
  All jobs done.
