setup
-----
  $ cd ${TESTDIR}/tutorial-stash_chirp

creating tarball
----------------
  $ chmod 755 data_app/data_access.sh
  $ tar cvzf data_app.tar.gz data_app
  data_app/
  data_app/data_access.sh

  $ cp data_app.tar.gz ~/stash/public/
  $ chmod 777 ~/stash/public/data_app.tar.gz

edit job wrapper
----------------
  $ sed 's/+username/+jenkins/' data_access.ini > temp.ini
  $ rm data_access.ini
  $ mv temp.ini data_access.ini

  $ skeleton_key -c data_access.ini
  Generated ticket myticket.ticket.
  ticket 'myticket.ticket': successfully * (glob)
  ticket 'myticket.ticket': successfully registered.
  ticket 'myticket.ticket': directory '/' aclmask = 'rl'.
  ticket 'myticket.ticket': directory '/' aclmask = 'rwl'.

verification
------------
  $ chmod 700 run_job.py
  $ python run_job.py > run-job.txt 2>&1
  $ cat run-job.txt | tail -1
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
  $ ls ~/stash/public/data_app.tar.gz
  ls: cannot access /home/jenkins/stash/public/data_app.tar.gz: No such file or directory
  [2]