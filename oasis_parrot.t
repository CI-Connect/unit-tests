Prologue
--------
  $ cp -a ${TESTDIR}/tutorial-oasis_parrot .
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

copy tarball to stash
---------------------
TODO
cp oasis_app.tar.gz ~/data/public/
chmod 644 ~/data/public/oasis_app.tar.gz

make run_job.py wrapper
-----------------------
TODO
sed 's/username/SLAVEUSER/' oasis.ini > temp.ini
rm oasis.ini
mv temp.ini oasis.ini

skeleton_key -c oasis.ini

test wrapper:
python run_job.py

HTCondor job
------------
Copy some extra utilities to the unit test directory
  $ cp ${TESTDIR}/run_and_wait.sh .

run oasis.submit through condor
$ ./run_and_wait.sh oasis.submit
All jobs done.

verify output
cat logs/oasis.0.out | tail -2
Finishing script at:* (glob)
* (glob)