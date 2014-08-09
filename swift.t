Note: must run on osgconnect to source swift

Prologue
--------
  $ cd /var/lib/jenkins/workspace/OSG_Connect_Tests/OSG_Connect_Swift/unit-tests
  $ cd tutorial-swift
  $ source /var/lib/jenkins/workspace/OSG_Connect_Tests/OSG_Connect_Swift/unit-tests/tutorial-swift/setup.sh
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
  HOME=/home/jenkins
  HOSTNAME=login01.osgconnect.net
  HUDSON_COOKIE=* (glob)
  HUDSON_HOME=/var/lib/jenkins (glob)
  HUDSON_SERVER_COOKIE=* (glob)
  HUDSON_URL=http://build.ci-connect.net:8080/
  JENKINS_HOME=/var/lib/jenkins
  JENKINS_SERVER_COOKIE=* (glob)
  JENKINS_URL=http://build.ci-connect.net:8080/
  JOB_NAME=OSG_Connect_Tests/OSG_Connect_Swift
  JOB_URL=http://build.ci-connect.net:8080/job/OSG_Connect_Tests/job/OSG_Connect_Swift/
  LANG=* (glob)
  LANGUAGE=* (glob)
  LC_ALL=* (glob)
  LD_LIBRARY_PATH=* (glob)
  LESSOPEN=* (glob)
  LOGNAME=jenkins (glob)
  MAIL=/var/spool/mail/jenkins (glob)
  NLSPATH=* (glob)
  NODE_LABELS=OSG_Connect_Slave
  NODE_NAME=OSG_Connect_Slave
  PATH=* (glob)
  PWD=/var/lib/jenkins/workspace/OSG_Connect_Tests/OSG_Connect_Swift/unit-tests/tutorial-swift
  QTDIR=* (glob)
  QTINC=* (glob)
  QTLIB=* (glob)
  SHELL=/bin/bash
  SHLVL=* (glob)
  TEMP=* (glob)
  TERM=* (glob)
  TESTDIR=/home/jenkins/workspace/OSG_Connect_Tests/OSG_Connect_Swift/unit-tests
  TESTFILE=swift.t
  TMP=* (glob)
  TMPDIR=* (glob)
  TZ=* (glob)
  USER=jenkins (glob)
  WORKSPACE=* (glob)
  XFILESEARCHPATH=* (glob)
  _=* (glob)

p1.swift
--------
  $ cp app/simulate.sh part01

  $ cd part01
  $ swift p1.swift > output.txt 2>&1
  $ grep Final output.txt 
  Final status:*  Finished successfully:* (glob)

  $ cat sim.out
        ?? (glob)

  $ cd ..

p2.swift
--------
  $ cp app/simulate.py part02
  $ cd part02

  $ swift p2.swift > output.txt 2>&1
  $ grep Final output.txt
  Final status:* Finished successfully:* (glob)

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

  $ swift p3.swift > output.txt 2>&1
  $ grep Final output.txt
  Final status:* Finished successfully:* (glob)

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

  $ swift p4.swift > output.txt 2>&1
  $ grep Final output.txt
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

  $ swift p5.swift > output.txt 2>&1
  $ grep Final output.txt
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

  $ swift p6.swift > output.txt 2>&1
  $ grep Final output.txt
  Final status:* Finished successfully:* (glob)

  $ cat output/stats.out
  ??????? (glob)

  $ cd ..
