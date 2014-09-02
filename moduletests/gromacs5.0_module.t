Prologue
--------
  $ cd ${TESTDIR}/gromacs/5.0

Edit script
-----------
  $ sed 's/+ProjectName/#+ProjectName/' check_gromacs.submit > check_gromacs.new
  $ sed 's;/tmp/check_gromacs;.;' check_gromacs.new > check_gromacs.new2
  $ cat check_gromacs.new2 | head -11 > check_gromacs.new3
  $ mv check_gromacs.new3 check_gromacs.submit
  $ echo >> check_gromacs.submit
  $ sed -i "12s/$/Requirements = (IS_GLIDEIN == True) \&\& (HAS_CVMFS_oasis_opensciencegrid_org =?= TRUE) \&\& (OpSys == "LINUX" \&\& OpSysMajorVer == 6)/" check_gromacs.submit
  $ echo >> check_gromacs.submit
  $ sed -i "13s/$/queue 25/" check_gromacs.submit

Run test job
------------
Copy some extra utilities to the unit test directory
  $ cp ${TESTDIR}/../run_and_wait.sh .

run check_gromacs.submit through condor
  $ ./run_and_wait.sh check_gromacs.submit
  All jobs done.
