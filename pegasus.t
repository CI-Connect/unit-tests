Note: must run on osgconnect for Pegasus

prologue
--------
  $ cd ~/Jenkins/workspace/OSG_Connect_Pegasus/unit-tests
  $ cd tutorial-pegasus
  $ cd wordfreq-workflow

submit
------
  $ chmod +x submit

  $ cp ${TESTDIR}/pegasus_wait.sh .
  $ chmod +x pegasus_wait.sh

  $ ./pegasus_wait.sh  
   # jobs succeeded   :* (glob)
   # jobs failed      :* (glob)
   # jobs unsubmitted :* (glob)
  
larger submission 
-----------------
  $ cp many-more-inputs/* inputs

Allow Pegasus to cluster up to 50 tasks in each job
  $ sed 's/wordfreq.addProfile(Profile(Namespace.PEGASUS, "clusters.size", 1))/wordfreq.addProfile(Profile(Namespace.PEGASUS, "clusters.size", 50))/' dax-generator.py > tmp.py
  $ rm dax-generator.py
  $ mv tmp.py dax-generator.py

  $ ./pegasus_wait.sh
  # jobs succeeded   :* (glob)
  # jobs failed      :* (glob)
  # jobs unsubmitted :* (glob)
  
