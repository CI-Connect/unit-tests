prologue
--------
  $ cd ~/C\:\\Jenkins\\workspace\\OSG_Connect_Stash_HTTP/unit-tests
  $ cp -a ~/C\:\\Jenkins\\workspace\\OSG_Connect_Stash_HTTP/unit-tests/C\:\\Jenkins\\workspace\\OSG_Connect_Stash_HTTP\\tutorial-stash-http ./tutorial-stash_http
  $ cd tutorial-stash_http

Making file accessible on HTTP
------------------------------
  $ scp random_words ~/data/public
  $ chmod 644 ~/data/public/random_words
  $ cp -a test_directory ~/data/public/test_directory
  $ chmod 755 ~/data/public/test_directory
  $ chmod 644 ~/data/public/test_directory/test_file

Accessing files using wget
--------------------------
  $ cd ~/C\:\\Jenkins\\workspace\\OSG_Connect_Stash_HTTP/unit-tests/tutorial-stash_http
  $ mkdir tmp
  $ cd tmp
  $ wget --no-check-certificate http://stash.osgconnect.net/+antonyu/test_directory/test_file
  $ cd ..

HTcondor jobs
-------------
Copy some extra utilities to the unit test directory
  $ cp ${TESTDIR}/run_and_wait.sh .

run application.submit with condor
  $ ./run_and_wait.sh application/application.submit
  All jobs done.
