Note: must run on osgconnect for Pegasus

prologue
--------
  $ cd /var/lib/jenkins/workspace/OSG_Connect_Pegasus/unit-tests
  $ cd tutorial-pegasus/wordfreq-workflow

submit
------
  $ chmod +x submit

  $ cp ${TESTDIR}/pegasus_wait.sh .
  $ chmod +x pegasus_wait.sh

  $ ./pegasus_wait.sh  
   # jobs succeeded   :* (glob)
   # jobs failed      :* (glob)
   # jobs unsubmitted :* (glob)

verify output
-------------
  $ cd ~/data/outputs/
  $ head -n 3 *.out
  ==> Alices_Adventures_in_Wonderland_by_Lewis_Carroll.txt.out <==
     1818							       the
      940							       and
      809							       to
  
  ==> Dracula_by_Bram_Stoker.txt.out <==
     8041				   the
     5951				   and
     4831				   i
  
  ==> Pride_and_Prejudice_by_Jane_Austen.txt.out <==
     4507					       the
     4243					       to
     3728					       of
  
  ==> The_Adventures_of_Huckleberry_Finn_by_Mark_Twain.txt.out <==
     6427							     and
     4975							     the
     3667							     i
  
  ==> Ulysses_by_James_Joyce.txt.out <==
    15130				   the
     8260				   of
     7285				   and
  
  ==> Visual_Signaling_By_Signal_Corps_United_States_Army.txt.out <==
     2883								the
     1385								of
      836								and  

larger submission 
-----------------
  $ cd ~/workspace/OSG_Connect_Pegasus/unit-tests/tutorial-pegasus/wordfreq-workflow
  $ cp many-more-inputs/* inputs

Allow Pegasus to cluster up to 50 tasks in each job
  $ sed 's/wordfreq.addProfile(Profile(Namespace.PEGASUS, "clusters.size", 1))/wordfreq.addProfile(Profile(Namespace.PEGASUS, "clusters.size", 50))/' dax-generator.py > tmp.py
  $ rm dax-generator.py
  $ mv tmp.py dax-generator.py

  $ chmod +x dax-generator.py

  $ ./pegasus_wait.sh
   # jobs succeeded   :* (glob)
   # jobs failed      :* (glob)
   # jobs unsubmitted :* (glob)
  
Clean up
--------
  $ cd ~/data/workflows/jenkins/pegasus/wordfreq-workflow
  rm -rf *0

  $ cd ~/data/outputs
  rm *.out