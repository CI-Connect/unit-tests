Prologue
--------
  $ cp -a ${TESTDIR}/tutorial-swift .
  $ cd tutorial-swift
  $ source ${TESTDIR}/tutorial-swift/setup.sh
  Using Swift from *, and adding to PATH (glob)
  Swift version is * (glob)
  Adding * (glob)
  Saving * (glob)

simulate.sh
-----------
  $ ./app/simulate.sh 2>log
       * (glob)
  $ head -4 log
  
  Called as: * (glob)
  Start time: * (glob)
  Running on node: * (glob)

  $ ./app/simulate.sh -n 4 -r 1000000 2>log
  * (glob)
  * (glob)
  * (glob)
  * (glob)

  $ ./app/simulate.sh -n 3 -r 1000000 -x 100 2>log
  * (glob)
  * (glob)
  * (glob)

stats.sh
--------
  $ ls ./app/f*
  ./app/f1 
  ./app/f2 
  ./app/f3 
  ./app/f4

  $ cat ./app/f*
  25
  60
  40
  75

  $ ./app/stats.sh ./app/f*
  50
  
  Called as: * (glob) 
  
  Start time: * (glob)
  Running on node: * (glob)
  Running as user: * (glob)
  
  Environment:
  
  BUILD_DISPLAY_NAME=* (glob)
  BUILD_ID=* (glob)
  BUILD_NUMBER=* (glob)
  BUILD_TAG=* (glob)
  BUILD_URL=* (glob)
  CDPATH=* (glob)
  COLUMNS=* (glob)
  CRAMTMP=* (glob)
  EXECUTOR_NUMBER=* (glob)
  GIT_BRANCH=* (glob)
  GIT_COMMIT=* (glob)
  GIT_PREVIOUS_COMMIT=* (glob)
  GIT_URL=https://github.com/OSGConnect/tutorial-swift
  GREP_OPTIONS=* (glob)
  HOME=* (glob)
  HUDSON_COOKIE=* (glob)
  HUDSON_HOME=* (glob)
  HUDSON_SERVER_COOKIE=* (glob)
  HUDSON_URL=http://build.ci-connect.net:8080/
  JENKINS_HOME=* (glob)
  JENKINS_SERVER_COOKIE=* (glob)
  JENKINS_URL=http://build.ci-connect.net:8080/
  JOB-NAME=OSG_Connect_Swift
  JOB_URL=http://build.ci-connect.net:8080/job/OSG_Connect_Swift/
  LANG=* (glob)
  LANGUAGE=* (glob)
  LC_ALL=* (glob)
  LD_LIBRARY_PATH=* (glob)
  LOGNAME=jenkins
  NLSPATH=* (glob)
  NODE_LABELS=* (glob)
  NODE_NAME=* (glob)
  PATH=* (glob)
  PWD=* (glob)
  SHELL=* (glob)
  SHLVL=* (glob)
  TEMP=* (glob)
  TERM=* (glob)
  TESTDIR=* (glob)
  TESTFILE=swift.t
  TMP=* (glob)
  TMPDIR=* (glob)
  TZ=* (glob)
  USER=jenkins
  WORKSPACE=* (glob)
  XFILESEARCHPATH=* (glob)
  _=* (glob)

p1.swift
--------
  $ cd part01
  $ swift p1.swift
  Swift * (glob)

  RunID: * (glob)
  Progress:*  time:* (glob)
  Final status:*  Finished successfully:1 (glob)

  $ cat sim.out
  ?? (glob)

  $ cd ..

HTCondor job
------------
Copy some extra utilities to the unit test directory
$ cp ${TESTDIR}/run_and_wait.sh .

run transfer.submit through condor
$ ./run_and_wait.sh transfer.submit
All jobs done.