Prologue
--------
  $ cd ~/C\:\\Jenkins\\workspace\\OSG_Connect_Swift/unit-tests
  $ cp -a ~/C\:\\Jenkins\\workspace\\OSG_Connect_Swift/unit-tests/C\:\\Jenkins\\workspace\\OSG_Connect_Swift\\tutorial-swift ./tutorial-swift
  $ cd tutorial-swift
  $ source ~/C\:\\Jenkins\\workspace\\OSG_Connect_Swift/unit-tests/tutorial-swift/setup.sh
  using Swift from * (glob)
  Swift version is * (glob)
  Adding * (glob)
  Saving * (glob)

simulate.sh
-----------
  $ ./app/simulate.sh 2>log
       * (glob)
  $ head -4 log
  
  Called as:* (glob)
  Start time:* (glob)
  Running on node:* (glob)

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
  
  Called as* (glob)
  
  Start time: * (glob)
  Running on node: * (glob)
  Running as user: * (glob)
  
  Environment:
  
  * (glob)
  * (glob)
  * (glob)
  * (glob)
  * (glob)
  * (glob)
  * (glob)
  * (glob)
  * (glob)
  * (glob)
  * (glob)
  * (glob)
  * (glob)
  * (glob)
  * (glob)
  * (glob)
  * (glob)
  * (glob)
  * (glob)
  * (glob)
  * (glob)
  * (glob)
  * (glob)
  BUILD_DISPLAY_NAME=* (glob)
  BUILD_ID=* (glob)
  BUILD_NUMBER=* (glob)
  BUILD_TAG=* (glob)
  BUILD_URL=* (glob)
  CDPATH=* (glob)
  COBBLER_SERVER=* (glob)
  COLUMNS=* (glob)
  CRAMTMP=* (glob)
  CVS_RSH=ssh
  EXECUTOR_NUMBER=? (glob)
  GIT_BRANCH=* (glob)
  GIT_COMMIT=* (glob)
  GIT_PREVIOUS_COMMIT=* (glob)
  GIT_URL=https://github.com/OSGConnect/tutorial-swift
  GREP_OPTIONS=* (glob)
  G_BROKEN_FILENAMES=* (glob)
  HISTCONTROL=* (glob)
  HISTSIZE=* (glob)
  HOME=* (glob)
  HOSTNAME=* (glob)
  HUDSON_COOKIE=* (glob)
  HUDSON_HOME=* (glob)
  HUDSON_SERVER_COOKIE=* (glob)
  HUDSON_URL=http://build.ci-connect.net:8080/
  JENKINS_HOME=* (glob)
  JENKINS_SERVER_COOKIE=* (glob)
  JENKINS_URL=http://build.ci-connect.net:8080/
  JOB_NAME=OSG_Connect_Swift
  JOB_URL=http://build.ci-connect.net:8080/job/OSG_Connect_Swift/
  LANG=* (glob)
  LANGUAGE=* (glob)
  LC_ALL=* (glob)
  LD_LIBRARY_PATH=* (glob)
  LESSOPEN=* (glob)
  LOGNAME=* (glob)
  LS_COLORS=* (glob)
  MAIL=* (glob)
  NLSPATH=* (glob)
  NODE_LABELS=* (glob)
  NODE_NAME=* (glob)
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
  STY=* (glob)
  TEMP=* (glob)
  TERM=* (glob)
  TERMCAP=* (glob)
  TESTDIR=* (glob)
  TESTFILE=swift.t
  TMP=* (glob)
  TMPDIR=* (glob)
  TZ=* (glob)
  USER=* (glob)
  WINDOW=* (glob)
  WORKSPACE=* (glob)
  XFILESEARCHPATH=* (glob)
  _=* (glob)

p1.swift
--------
  $ cp app/simulate.sh part01

  $ cd part01
  $ export PATH=/home/antonyu/C:\Jenkins\workspace\OSG_Connect_Swift/unit-tests/tutorial-swift/bin:/home/antonyu/C:\Jenkins\workspace\OSG_Connect_Swift/unit-tests/tutorial-swift/app:/home/antonyu/osg-swift/bin:/home/antonyu/osg-swift/app:/cvmfs/atlas.cern.ch/repo/ATLASLocalRootBase/x86_64/xrootd/3.2.7-x86_64-slc6/v3.2.7/bin:/cvmfs/atlas.cern.ch/repo/ATLASLocalRootBase/x86_64/root/5.34.18-x86_64-slc6-gcc4.7/bin:/cvmfs/atlas.cern.ch/repo/ATLASLocalRootBase/x86_64/python/2.7.3-x86_64-slc6-gcc47/sw/lcg/external/Python/2.7.3/x86_64-slc6-gcc47-opt/bin:/cvmfs/atlas.cern.ch/repo/ATLASLocalRootBase/x86_64/Gcc/gcc472p1_x86_64_slc6/slc6/gcc47/bin:/usr/lib64/qt-3.3/bin:/usr/local/bin:/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/sbin:/opt/dell/srvadmin/bin:/usr/local/swift/stable/bin:/home/antonyu/bin:/cvmfs/uc3.uchicago.edu/Wolfram/Mathematica/8.0/Executables
  $ swift p1.swift
  Swift * (glob)
  
  RunID: * (glob)
  Progress:*  time:* (glob)
  Final status:*  Finished successfully:1 (glob)

  $ cat sim.out
        ?? (glob)

  $ cd ..

p2.swift
--------
  $ cp app/simulate.py part02
  $ cd part02

  $ swift p2.swift
  Swift * (glob)
  
  RunID:* (glob)
  Progress:  time:* (glob)
  Progress:  time:* (glob)
  Progress:  time:* (glob)
  Progress:  time:* (glob)
  Progress:  time:* (glob)
  Final status:* Finished successfully:10 (glob)

  $ ls output/
  sim_0.out
  sim_1.out
  sim_2.out
  sim_3.out
  sim_4.out
  sim_5.out
  sim_6.out
  sim_7.out
  sim_8.out
  sim_9.out

  $ cd ..

p3.swift
--------
  $ cp app/stats.sh part03
  $ cd part03

  $ swift p3.swift
  Swift * (glob)
  
  RunID:* (glob)
  Progress:  time:* (glob)
  Progress:  time:* Active:*  Stage out:* (glob)
  Final status:* Finished successfully:11 (glob)

  $ cat output/average.out
  ?? (glob)

  $ cd ..

p4.swift
--------
  $ cd part04

comment out +AccountingGroup in sites.xml
  $ sed 's:<profile namespace="globus"  key="condor.+AccountingGroup">"group_friends.{env.USER}"</profile>:<!-- -->:' sites.xml > temp.xml
  $ rm sites.xml
  $ mv temp.xml sites.xml

comment out +ProjectName as well
  $ sed 's:<profile namespace="globus"  key="condor.+ProjectName">"Swift"</profile>:<!-- -->:' sites.xml > temp.xml
  $ rm sites.xml
  $ mv temp.xml	sites.xml

comment out InternalHostname as well
  $ sed 's:<profile namespace="globus"  key="internalHostname">128.135.158.173</profile>:<!-- -->:' sites.xml > temp.xml
  $ rm sites.xml
  $ mv temp.xml sites.xml

  $ swift p4.swift 
  Progress:* time:* (glob)
  Progress:* time:* Submitted:* (glob)
  Progress:* time:* Submitted:*	(glob)
  Progress:* time:* Stage in:* Submitted:* (glob)
  Progress:* time:* Submitted:* Active:* Stage out:* (glob)
  Progress:* time:* Active:* Stage out:* Finished successfully:* (glob)
  Final status:* Finished successfully:* (glob)
  

  $ cat output/sim_0.out
        ?? (glob)
 
  $ cd ..

p5.swift
--------
  $ cd part05

comment out +AccountingGroup in	sites.xml
  $ sed 's:<profile namespace="globus"  key="condor.+AccountingGroup">"group_friends.{env.USER}"</profile>:<!-- -->:' sites.xml > temp.xml
  $ rm				 sites.xml
  $ mv temp.xml sites.xml

comment out +ProjectName as well
  $ sed 's:<profile namespace="globus"  key="condor.+ProjectName">"Swift"</profile>:<!-- -->:' sites.xml > temp.xml
  $ rm sites.xml
  $ mv temp.xml sites.xml

comment	out InternalHostname as	well
  $ sed 's:<profile namespace="globus"  key="internalHostname">128.135.158.173</profile>:<!-- -->:' sites.xml > temp.xml
  $ rm sites.xml
  $ mv temp.xml sites.xml

  $ swift p5.swift
  Progress:* time:* (glob)
  Progress:* time:* Submitted:*	(glob)
  Progress:* time:* Submitted:* (glob)
  Progress:* time:* Stage in:* Submitted:* (glob)
  Progress:* time:* Submitted:* Stage out:* (glob)
  Progress:* time:* Submitted:* Stage out:* Finished successfully:* (glob)
  Progress:* time:* Submitted:* Stage out:* Finished successfully:* (glob)
  Progress:* time:* Submitted:* Stage out:* Finished successfully:* (glob)
  Progress:* time:* Submitted:* Stage out:* Finished successfully:* (glob)
  Progress:* time:* Submitted:* Stage out:* Finished successfully:* (glob)
  Progress:* time:* Submitted:* Stage out:* Finished successfully:* (glob)
  Progress:* time:* Submitted:* Stage out:* Finished successfully:* (glob)
  Progress:* time:* Submitted:* Stage out:* Finished successfully:* (glob)
  Final status:* Finished successfully:* (glob)
  

  $ cat output/stats.out
  ??????? (glob)

  $ cd ..

p6.swift
--------
  $ cd part06

comment	out +AccountingGroup in	sites.xml
  $ sed 's:<profile namespace="globus"  key="condor.+AccountingGroup">"group_friends.{env.USER}"</profile>:<!-- -->:' sites.xml > temp.xml
  $ rm				 sites.xml
  $ mv temp.xml sites.xml

comment	out +ProjectName as well
  $ sed 's:<profile namespace="globus"  key="condor.+ProjectName">"Swift"</profile>:<!-- -->:' sites.xml > temp.xml
  $ rm sites.xml
  $ mv temp.xml sites.xml

comment out InternalHostname as well
  $ sed 's:<profile namespace="globus"  key="internalHostname">128.135.158.173</profile>:<!-- -->:' sites.xml > temp.xml
  $ rm sites.xml
  $ mv temp.xml sites.xml

  $ swift p6.swift 
  Progress:* time:* (glob)
  Progress:* time:* Submitted:* (glob)
  Progress:* time:* Stage in:* Submitted:* (glob)
  Progress:* time:* Submitted:* Finished successfully:* (glob)
  Progress:* time:* Submitted:* Active:* Finished successfully:* (glob)
  Progress:* time:* Submitted:* Stage out:* Finished successfully:* (glob)
  Progress:* time:* Submitted:* Stage out:* Finished successfully:* (glob)
  Progress:* time:* Submitted:* Stage out:* Finished successfully:* (glob)
  Progress:* time:* Submitted:* Stage out:* Finished successfully:* (glob)
  Progress:* time:* Submitted:* Stage out:* Finished successfully:* (glob)
  Progress:* time:* Submitted:* Stage out:* Finished successfully:* (glob)
  Progress:* time:* Submitted:* Stage out:* Finished successfully:* (glob)
  Progress:* time:* Submitted:* Stage out:* Finished successfully:* (glob)
  Progress:* time:* Submitted:* Stage out:* Finished successfully:* (glob)
  Progress:* time:* Submitted:* Stage out:* Finished successfully:* (glob)
  Final status:* Finished successfully:* (glob)
  

  $ cat output/stats.out
  ??????? (glob)

  $ cd ..
