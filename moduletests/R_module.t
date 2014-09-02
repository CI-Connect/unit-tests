Prologue
--------
  $ cd ${TESTDIR}/R

Edit script
-----------
  $ sed 's/+ProjectName/#+ProjectName/' check_R.submit > check_R.new
  $ sed 's;/tmp/check_R;.;' check_R.new > check_R.new2
  $ cat check_R.new2 | head -10 > check_R.new3
  $ mv check_R.new3 check_R.submit
  $ echo >> check_R.submit
  $ sed -i "11s/$/Requirements = (IS_GLIDEIN == TRUE) \&\& (HAS_CVMFS_oasis_opensciencegrid_org =?= TRUE)/" check_R.submit
  $ echo >> check_R.submit
  $ sed -i "12s/$/queue 25/" check_R.submit

Run test job
------------
Copy some extra utilities to the unit test directory
  $ cp ${TESTDIR}/../run_and_wait.sh .

run check_R.submit through condor
  $ ./run_and_wait.sh check_R.submit
  All jobs done.
