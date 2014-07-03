Prologue
--------
  $ cd ~/C\:\\Jenkins\\workspace\\OSG_Connect_Pegasus/unit-tests
  $ cp -a ~/C\:\\Jenkins\\workspace\\OSG_Connect_Pegasus/unit-tests/C\:\\Jenkins\\workspace\\OSG_Connect_Pegasus\\tutorial-pegasus ./tutorial-pegasus
  $ cd tutorial-pegasus
  $ cd wordfreq-workflow

submit
------
  $ sed 's:<profile namespace="condor" key="+ProjectName" >"con-train"</profile>::' submit > temp
  $ rm submit
  $ mv temp submit

  $ chmod +x submit

  $ cp ${TESTDIR}/pegasus_wait.sh .
  $ chmod +x pegasus_wait.sh

  $ ./pegasus_wait.sh  
   # jobs succeeded   :*(100.00%) (glob)
   # jobs failed      :      0 (0.00%)
   # jobs unsubmitted :      0 (0.00%)
  
verify output
------------- 
