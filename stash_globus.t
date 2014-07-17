verify transfers succeeded
-------------------------
  $ grep 1/1 gb_to_stash.txt
  [X*] 1/1 0.00 mbps (glob)

  $ grep 1/1 stash_to_gb.txt
  [X*] 1/1 0.00 mbps (glob)	
 
  $ cat gb_ls.txt
  /share/godata/globus_test.txt

  $ cd ~/data/public/system_tests
  $ ls globus_test.txt 
  globus_test.txt

Clean up stash
--------------
  $ rm globus_test.txt
