Prologue
--------
  $ cd ${TESTDIR}/python

Edit scripts
------------
  $ sed 's/+ProjectName/#+ProjectName/' check_python.submit > check_python.new
  $ sed 's;/tmp/check_python;.;' check_python.new > check_python.new2
  $ cat	check_python.new2 | head -9 > check_python.new3
  $ sed 's;+ProjectName;#+ProjectName;' check_python.new3 > check_python.submit
  $ echo >> check_python.submit
  $ sed -i "10s/$/Requirements = (IS_GLIDEIN == True) \&\& (HAS_CVMFS_oasis_opensciencegrid_org =?= TRUE)/" check_python.submit
  $ echo >> check_python.submit
  $ sed -i "11s/$/queue 25/" check_python.submit

  $ sed 's/+ProjectName/#+ProjectName/' check_python_modules.submit > check_python_modules.new
  $ sed 's;/tmp/check_python_modules;.;' check_python_modules.new > check_python_modules.new2
  $ sed 's;ShouldTransferFiles = NO;ShouldTransferFiles = YES;' check_python_modules.new2 > check_python_modules.new3
  $ sed 's;+ProjectName;#+ProjectName;' check_python_modules.new3 > check_python_modules.new4
  $ cat	check_python_modules.new4 | head -9 > check_python_modules.new5
  $ mv check_python_modules.new5 check_python_modules.submit
  $ echo >> check_python_modules.submit
  $ sed -i "10s/$/Requirements = (IS_GLIDEIN == True) \&\& (HAS_CVMFS_oasis_opensciencegrid_org =?= TRUE)/" check_python_modules.submit
  $ echo >> check_python_modules.submit
  $ sed -i "11s/$/queue 25/" check_python_modules.submit

Run test job
------------
Copy some extra utilities to the unit test directory
  $ cp ${TESTDIR}/../run_and_wait.sh .

run check_python.submit through condor
  $ ./run_and_wait.sh check_python.submit
  All jobs done.

  $ cat results.out* | grep Error
  $ cat results.out* | grep ERROR

run check_python_modules.submit through condor
  $ ./run_and_wait.sh check_python_modules.submit
  All jobs done.

  $ cat results.out* | grep Error
  $ cat results.out* | grep ERROR
