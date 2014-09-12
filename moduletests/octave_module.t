Prologue
--------
  $ cd ${TESTDIR}/octave

Edit script
-----------
  $ sed 's/+ProjectName/#+ProjectName/' check_octave.submit > check_octave.new
  $ sed 's;/tmp/check_octave;.;' check_octave.new > check_octave.new2
  $ cat check_octave.new2 | head -10 > check_octave.new3
  $ sed 's;+ProjectName;#+ProjectName;' check_octave.new3 > check_octave.submit
  $ echo >> check_octave.submit
  $ sed -i "11s/$/Requirements = (IS_GLIDEIN == True) \&\& (HAS_CVMFS_oasis_opensciencegrid_org =?= TRUE)/" check_octave.submit
  $ echo >> check_octave.submit
  $ sed -i "12s/$/queue 25/" check_octave.submit

Run test job
------------
Copy some extra utilities to the unit test directory
  $ cp ${TESTDIR}/../run_and_wait.sh .

run check_octave.submit through condor
  $ ./run_and_wait.sh check_octave.submit
  All jobs done.

Check output
------------
  $ cat results.out* | grep Error
  $ cat results.out* | grep ERROR
