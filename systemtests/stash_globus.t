verify transfers succeeded
-------------------------
  $ cd ~/workspace/OSG_Connect_Tests/Stash_Globus/unit-tests

  $ cat gb_to_stash.txt | head -2
  Task ID: * (glob)
  Type <CTRL-C> to cancel or bg<ENTER> to background

  $ cat stash_to_gb.txt | head -2
  Task ID: * (glob)
  Type <CTRL-C> to cancel or bg<ENTER> to background

  $ cat gb_ls.txt
  ~/globus_test.txt

  $ cd ~/data/public/system_tests
  $ ls globus_test.txt 
  globus_test.txt

Clean up stash
--------------
  $ rm globus_test.txt