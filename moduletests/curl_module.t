Prologue
--------
  $ cd ${TESTDIR}/curl

Edit script
-----------
  $ sed 's/+ProjectName/#+ProjectName/' check_curl.submit > check_curl.new
  $ sed 's;/tmp/check_curl;.;' check_curl.new > check_curl.new2
  $ cat check_curl.new2 | head -9 > check_curl.submit
  $ echo >> check_curl.submit
  $ sed -i "10s/$/Requirements = (IS_GLIDEIN == True) \&\& (HAS_CVMFS_oasis_opensciencegrid_org =?= TRUE)/" check_curl.submit
  $ echo >> check_curl.submit
  $ sed -i "11s/$/queue 25/" check_curl.submit

Run test job
------------
Copy some extra utilities to the unit test directory
  $ cp ${TESTDIR}/../run_and_wait.sh .

run check_curl.submit through condor
  $ ./run_and_wait.sh check_curl.submit
  All jobs done.

Check output
------------
  $ cat results.out* | grep Error
  [1]
  $ cat results.out* | grep ERROR
  [1]