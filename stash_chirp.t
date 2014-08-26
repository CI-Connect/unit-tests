setup
-----
  $ cd ${TESTDIR}/tutorial-stash_chirp
  $ mkdir ~/stash/chirp_access

creating tarball
----------------
  $ chmod 755 data_app/data_access.sh
  $ tar cvzf data_app.tar.gz data_app
  $ cp data_app.tar.gz ~/stash/public/
  $ chmod 644 ~/stash/public/data_app.tar.gz

edit job wrapper
----------------
  $ sed 's/+username/+jenkins/' data_access.ini > temp.ini
  $ rm data_access.ini
  $ mv temp.ini data_access.ini

  $ skeleton_key -c data_access.ini

verification
------------
  $ chmod 700 run_job.py
  $ ./run_job.py
  testing output on: * (glob)

  $ cat ~/stash/data_access_test
  testing output on: * (glob)

  $ rm ~/stash/data_access_test

submit jobs
-----------
Copy some extra utilities to the unit test directory
  $ cp ${TESTDIR}/run_and_wait.sh .
run the job through condor
  $ ./run_and_wait.sh osg-connect.submit
  All jobs done.

  $ cat ~/stash/data_access_test
  testing output on: * (glob)

clean up
--------
  $ rm ~/stash/public/data_app.tar.gz