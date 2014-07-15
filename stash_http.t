Note: must run on osgconnect to access user's stash

prologue
--------
  $ cd ~/Jenkins/workspace/OSG_Connect_Stash_HTTP/unit-tests
  $ cd tutorial-stash-http

Making file accessible on HTTP
------------------------------
  $ scp random_words ~/data/public
  $ chmod 644 ~/data/public/random_words
  $ cp -a test_directory ~/data/public/test_directory
  $ chmod 755 ~/data/public/test_directory
  $ chmod 644 ~/data/public/test_directory/test_file

Accessing files using wget
--------------------------
  $ mkdir tmp
  $ cd tmp
  $ wget -q --no-check-certificate http://stash.osgconnect.net/+antonyu/test_directory/test_file

verify file received
  $ ls test_file
  test_file

  $ cd ..
  $ cd application

replace username in app_script.sh
  $ sed 's/username/antonyu/' app_script.sh > temp.sh 
  $ rm app_script.sh 
  $ mv temp.sh app_script.sh

HTcondor jobs
-------------
Copy some extra utilities to the unit test directory
  $ cp ${TESTDIR}/run_and_wait.sh .

run application.submit with condor
  $ ./run_and_wait.sh application.submit
  All jobs done.

Clean up
--------
  $ cd ~/data/public
  $ rm random_words
  $ rm -rf test_directory
 
  $ ls random_words
  ls: cannot access random_words: No such file or directory
  [2]

  $ ls test_directory
  ls: cannot access test_directory: No such file or directory 
  [2]
