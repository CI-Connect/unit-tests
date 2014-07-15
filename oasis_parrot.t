Note: must run on osgconnect to access user's stash

Prologue
--------
  $ cd ${TESTDIR}
  $ cd tutorial-oasis_parrot

myapp.sh 
--------
  $ chmod +x oasis_app/myapp.sh 
  $ ./oasis_app/myapp.sh | tail -2
  Finishing script at:* (glob)
  * (glob)

creating a tarball
------------------
  $ chmod 755 oasis_app/myapp.sh
  $ tar cvzf oasis_app.tar.gz oasis_app
  oasis_app/
  oasis_app/myapp.sh
  oasis_app/test.R

copy tarball to stash
---------------------

  $ cp oasis_app.tar.gz ~/data/public/
  $ chmod 644 ~/data/public/oasis_app.tar.gz

make run_job.py wrapper
-----------------------

  $ sed 's/username/antonyu/' oasis.ini > temp.ini
  $ rm oasis.ini
  $ mv temp.ini oasis.ini

  $ skeleton_key -c oasis.ini

HTCondor job
------------
Copy some extra utilities to the unit test directory
  $ cp ${TESTDIR}/run_and_wait.sh .

run oasis.submit through condor
  $ ./run_and_wait.sh oasis.submit
  All jobs done.

verify output
  $ cat logs/oasis.0.out | tail -2
  Finishing script at:* (glob)
  * (glob)

Clean up
--------
  $ cd ~/data/public
  $ rm oasis_app.tar.gz
  $ ls oasis_app.tar.gz
  ls: cannot access oasis_app.tar.gz: No such file or directory
  [2]
