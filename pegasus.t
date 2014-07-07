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

  $ ./submit | grep pegasus-status

#  $ ./pegasus_wait.sh  
#   # jobs succeeded   :*(100.00%) (glob)
#   # jobs failed      :      0 (0.00%)
#   # jobs unsubmitted :      0 (0.00%)
  
verify output
------------- 
