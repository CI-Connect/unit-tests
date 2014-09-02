Prologue
--------
  $ cd ${TESTDIR}/python

Edit scripts
------------
  $ sed 's/+ProjectName/#+ProjectName/' check_python.submit > check_python.new
  $ sed 's;/tmp/check_python;.;' check_python.new > check_python.new2
  $ mv check_python.new2 check_python.submit

  $ sed 's/+ProjectName/#+ProjectName/' check_python_modules.submit > check_python_modules.new
  $ sed 's;/tmp/check_python_modules;.;' check_python_modules.new > check_python_modules.new2
  $ mv check_python_modules.new2 check_python_modules.submit

Run test job
------------
Copy some extra utilities to the unit test directory
  $ cp ${TESTDIR}/../run_and_wait.sh .

run check_python.submit through condor
  $ ./run_and_wait.sh check_python.submit
  All jobs done.

run check_python_modules.submit through condor
  $ ./run_and_wait.sh check_python_modules.submit
  All jobs done.
