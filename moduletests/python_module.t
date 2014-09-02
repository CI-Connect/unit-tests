Prologue
--------
  $ cd ${TESTDIR}/python

Edit scripts
------------
  $ sed 's/+ProjectName/#+ProjectName/' check_python.submit > check_python.new
  $ sed 's;/tmp/check_python;.;' check_python.new > check_python.new2
  $ mv check_python.new2 check_python.submit
  $ sed -i "10s/$/queue 25/" check_python.submit

  $ cat	check_python.submit | head -10 > check_python.new3
  $ mv check_python.new3 check_python.submit

  $ sed 's/+ProjectName/#+ProjectName/' check_python_modules.submit > check_python_modules.new
  $ sed 's;/tmp/check_python_modules;.;' check_python_modules.new > check_python_modules.new2
  $ mv check_python_modules.new2 check_python_modules.submit
  $ sed -i "10s/$/queue 25/" check_python_modules.submit

  $ cat	check_python_modules.submit | head -10 > check_python_modules.new3
  $ mv check_python_modules.new3 check_python_modules.submit

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
