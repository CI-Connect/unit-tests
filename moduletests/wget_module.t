Prologue
--------
  $ cd ${TESTDIR}/wget

Edit script
-----------
  $ sed 's/+ProjectName/#+ProjectName/' check_wget.submit > check_wget.new
  $ sed 's;/tmp/check_wget;.;' check_wget.new > check_wget.new2
  $ mv check_wget.new2 check_wget.submit

Run test job
------------
Copy some extra utilities to the unit test directory
  $ cp ${TESTDIR}/../run_and_wait.sh .

run check_wget.submit through condor
  $ ./run_and_wait.sh check_wget.submit
  All jobs done.
