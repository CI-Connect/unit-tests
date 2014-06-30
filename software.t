Prologue
--------
  $ cd ~/C\:\\Jenkins\\workspace\\OSG_Connect_Software/unit-tests
  $ cp -a ~/C\:\\Jenkins\\workspace\\OSG_Connect_Software/unit-tests/C\:\\Jenkins\\workspace\\OSG_Connect_Software\\tutorial-software ./tutorial-software
  $ cd tutorial-software

Create tar bundle
-----------------
  $ tar cvzf words.tar.gz distribution random_words
  distribution
  random words

  $ mv words.tar.gz ~/data/public/
  $ chmod +r ~/data/public/words.tar.gz

  $ sed 's/marco/antonyu/' words.submit > temp.submit
  $ rm words.submit
  $ mv temp.submit words.submit

HTCondor jobs
-------------
Copy some extra utilities to the unit test directory
  $ cp ~/C\:\\Jenkins\\workspace\\OSG_Connect_Software/unit-tests/run_and_wait.sh .

run words.submit with condor
  $ ./run_and_wait.sh words.submit
  All jobs done.
