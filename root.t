Prologue
--------
  $ cp -a ${TESTDIR}/tutorial-root .
  $ cd tutorial-root

ROOT
----
  $ source ${TESTDIR}/tutorial-root/environment.sh | tail -14 | head -3
  Setting up ROOT version * (glob)
    Current GCC version:* (glob)
    Python version* (glob)

TODO: test if root works; root -q [filename] tests command line scripts, quits

Makefile
--------
  $ make
  g++ -O2 -Wall -fPIC -pthread -m64 -I/cvmfs/atlas.cern.ch/repo/ATLASLocalRootBase/x86_64/root/5.34.18-x86_64-slc6-gcc4.7/include   -c -o inspector.o inspector.C
  g++ -O2 -m64 inspector.o -L/cvmfs/atlas.cern.ch/repo/ATLASLocalRootBase/x86_64/root/5.34.18-x86_64-slc6-gcc4.7/lib -lCore -lCint -lRIO -lNet -lHist -lGraf -lGraf3d -lGpad -lTree -lRint -lPostscript -lMatrix -lPhysics -lMathCore -lThread -pthread -lm -ldl -rdynamic  -lTreePlayer -o inspector
  inspector done

inspector
---------
TODO: ./inspector ROOT-FILE once we have a root file

wrapper.sh
----------
  $ chmod +x wrapper.sh

TODO: ./wrappersh once there's a root file (requires editing wrapper.sh)

HTCondor jobs
-------------
Copy some extra utilities to the unit test directory
  $ cp ${TESTDIR}/run_and_wait.sh .

TODO: test submitting root.submit
$ ./run_and_wait.sh root.submit
All jobs done.

TODO: verify output with tail -n10 log/out.85995.0:
vx_m  465260
vx_n  16759
vx_nTracks	223060
vx_px		480170
vx_py		480150
vx_pz		481488
vx_sumPt	465725
vx_x		481620
vx_y		444255
vx_z		499665
c-110-34.aglt2.org
 