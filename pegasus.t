Note: must run on osgconnect for Pegasus

Prologue
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
  
