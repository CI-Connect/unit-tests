Prologue
--------
  $ cp -a ${TESTDIR}/../../tutorial-photodemo .
  $ cd tutorial-photodemo

Create photodemo.sub
--------------------
  $ ./mksubmit 200 >photodemo.sub

Test job locally
----------------
  $ ./luminance 0 5 <manifest.txt
  /* Running on host: * (glob)
  [1880, 0.525493],
  [1919, 0.416121],
  [1919, 0.436667],
  [1919, 0.461788],
  [1945, 0.142712],
  /* 5 photos analyzed in * (glob)

  $ head -1 manifest.txt
  http://stash.osgconnect.net/@ConnectTrain/photodemo/ucpa/series1/derivatives_series1/apf1-00001r.jpg 1880

HTCondor jobs
-------------

Copy some extra utilities to the unit test directory
  $ cp ${TESTDIR}/../../run_and_wait.sh .

run photodemo.sub
  $ ./run_and_wait.sh photodemo.sub
  All jobs done.
