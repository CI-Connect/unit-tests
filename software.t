Note: must run on osgconnect to access user's stash

Prologue
--------
  $ cd ~/Jenkins/workspace/OSG_Connect_Software/unit-tests
  $ cd tutorial-software

Create tar bundle
-----------------
  $ tar cvzf words.tar.gz distribution random_words
  distribution
  random_words

  $ mv words.tar.gz ~/data/public/
  $ chmod +r ~/data/public/words.tar.gz

  $ sed 's/sthapa/antonyu/' words.submit > temp.submit
  $ rm words.submit
  $ mv temp.submit words.submit

HTCondor jobs
-------------
Copy some extra utilities to the unit test directory
  $ cp ${TESTDIR}/run_and_wait.sh .

run words.submit with condor
  $ ./run_and_wait.sh words.submit
  All jobs done.
