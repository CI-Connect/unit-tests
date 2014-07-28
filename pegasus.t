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
     1818\tthe (esc)
      940\tand (esc)
      809\tto (esc)
  
  ==> Dracula_by_Bram_Stoker.txt.out <==
     8041\tthe (esc)
     5951\tand (esc)
     4831\ti (esc)
  
  ==> Pride_and_Prejudice_by_Jane_Austen.txt.out <==
     4507\tthe (esc)
     4243\tto (esc)
     3728\tof (esc)
  
  ==> The_Adventures_of_Huckleberry_Finn_by_Mark_Twain.txt.out <==
     6427\tand (esc)
     4975\tthe (esc)
     3667\ti (esc)
  
  ==> Ulysses_by_James_Joyce.txt.out <==
    15130\tthe (esc)
     8260\tof (esc)
     7285\tand (esc)
  
  ==> Visual_Signaling_By_Signal_Corps_United_States_Army.txt.out <==
     2883\tthe (esc)
     1385\tof (esc)
      836\tand (esc)

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
  $ cd ~/data/outputs
  $ rm *.out

  $ cd ~/data/workflows/jenkins/pegasus/wordfreq-workflow
  $ rm -rf *0

  $ ls *0
  ls: cannot access *0: No such file or directory
  [2]