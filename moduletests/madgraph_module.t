Prologue
--------
  $ cd ${TESTDIR}/madgraph

Edit script
-----------
  $ sed 's/+ProjectName/#+ProjectName/' check_madgraph.submit > check_madgraph.new
  $ sed 's;/tmp/check_madgraph;.;' check_madgraph.new > check_madgraph.new2
  $ cat check_madgraph.new2 | head -10 > check_madgraph.new3
  $ mv check_madgraph.new3 check_madgraph.submit
  $ echo >> check_madgraph.submit
  $ sed -i "11s/$/Requirements = (IS_GLIDEIN == True) && (HAS_CVMFS_oasis_opensciencegrid_org =?= TRUE) && (OpSys == "LINUX" && OpSysMajorVer == 6)" check_madgraph.submit
  $ echo >> check_madgraph.submit
  $ sed -i "12s/$/queue 25/" check_madgraph.submit

Run test job
------------
Copy some extra utilities to the unit test directory
  $ cp ${TESTDIR}/../run_and_wait.sh .

run check_madgraph.submit through condor
  $ ./run_and_wait.sh check_madgraph.submit
  All jobs done.
