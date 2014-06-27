Prologue
--------
  $ cp -a ${TESTDIR}/tutorial-swift .
  $ cd tutorial-swift
  $ source setup.sh
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
  f1 f2 f3 4

  $ cat ./app/f*
  25
  60
  40
  75

  $ ./app/stats.sh f*
  50

  Called as: * (glob) 

  Start time: * (glob)
  Running on node: * (glob)
  Running as user: * (glob)

  Environment:

  COBBLER_SERVER=* (glob)
  CVS_RSH=* (glob)
  G_BROKEN_FILENAMES=* (glob)
  HISTCONTROL=* (glob)
  HISTSIZE=* (glob)
  HOME=* (glob)
  HOSTNAME=* (glob)
  LANG=* (glob)
  LESSOPEN=* (glob)
  LOGNAME=* (glob)
  LS_COLORS=* (glob)
  MAIL=* (glob)
  PATH=* (glob)
  PWD=* (glob)
  QTDIR=* (glob)
  QTINC=* (glob)
  QTLIB=* (glob)
  SHELL=* (glob)
  SHLVL=* (glob)
  SSH_CLIENT=* (glob)
  SSH_CONNECTION=* (glob)
  SSH_TTY=* (glob)
  TERM=* (glob)
  USER=* (glob)
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