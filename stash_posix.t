Note: must run on osgconnect to access user's stash

prologue
--------
  $ mkdir stash_posix
  $ touch stash_posix/posix_test.txt
  $ ls stash_posix/posix_test.txt
  stash_posix/posix_test.txt

moving files to stash
---------------------
  $ cp -a stash_posix ~/data/public/system_tests/stash_posix
  $ chmod 755 ~/data/public/system_tests/stash_posix
  $ chmod 644 ~/data/public/system_tests/stash_posix/posix_test.txt

  $ cd ~/data/public/system_tests/stash_posix
  $ ls posix_test.txt
  posix_test.txt

moving file out of stash
------------------------
  $ cp posix_test.txt ~/posix_test.txt
  $ cd 
  $ ls posix_test.txt
  posix_test.txt

Clean up
--------
  $ rm posix_test.txt
  $ cd ~/data/public/system_tests
  $ rm -rf stash_posix
  $ ls stash_posix
  ls: cannot access stash_posix: No such file or directory
  [2]