Prologue
--------
  $ cp -a ${TESTDIR}/tutorial-root .
  $ cd tutorial-root

ROOT
----
  $ source ${TESTDIR}/tutorial-root/environment.sh && make
  ...Type localSetupAGIS to setup AGIS
  ...Type localSetupAtlantis to setup Atlantis
  ...Type localSetupDQ2Client to use DQ2 Client
  ...Type localSetupEmi to use emi
  ...Type localSetupFAX to use FAX
  ...Type localSetupGanga to use Ganga
  ...Type localSetupGcc to use alternate gcc
  ...Type localSetupPacman to use Pacman
  ...Type localSetupPandaClient to use Panda Client
  ...Type localSetupPyAMI to setup pyAMI
  ...Type localSetupPoD to setup Proof-on-Demand
  ...Type localSetupROOT to setup (standalone) ROOT
  ...Type localSetupDQ2Wrappers to setup DQ2Wrappers
  ...Type localSetupSFT to setup SFT packages
  ...Type localSetupXRootD to setup XRootD
  ...Type showVersions to show versions of installed software
  ...Type asetup to setup a release (changeASetup to change asetup version)
  ...Type rcSetup to setup an ASG release (changeRCSetup to change rcSetup ver.)
  ...Type diagnostics for diagnostic tools
  ...Type helpMe for more help
  ...Type printMenu to show this menu
  ************************************************************************
  Setting up ROOT version * (glob)
    Current GCC version: gcc (GCC) * (glob)
  Setting up gcc version * (glob)
    Python version in your path is * (glob)
    Python version used to build ROOT is * (glob)
  Setting up Python version * (glob)
  Setting up XRootD version * (glob)
  ************************************************************************
   Tip for _this_ standalone ROOT and grid (ie prun) submission:
    avoid --athenaTag if you do not need athena
    use * (glob)
  ************************************************************************
  g++ -O2 -Wall -fPIC -pthread -m64 -I/cvmfs/atlas.cern.ch/repo/ATLASLocalRootBase/x86_64/root/5.34.18-x86_64-slc6-gcc4.7/include   -c -o inspector.o inspector.C
  g++ -O2 -m64 inspector.o -L/cvmfs/atlas.cern.ch/repo/ATLASLocalRootBase/x86_64/root/5.34.18-x86_64-slc6-gcc4.7/lib -lCore -lCint -lRIO -lNet -lHist -lGraf -lGraf3d -lGpad -lTree -lRint -lPostscript -lMatrix -lPhysics -lMathCore -lThread -pthread -lm -ldl -rdynamic  -lTreePlayer -o inspector
  inspector done

inspector
---------
  $ ./inspector ex.root
  0

wrapper.sh
----------
replace ROOT-FILE with example root file name
  $ sed 's/ROOT-FILE/ex.root/' wrapper.sh > temp.sh 
  $ rm wrapper.sh 
  $ mv temp.sh wrapper.sh

  $ chmod +x wrapper.sh

  $ ./wrapper.sh
  0

HTCondor jobs
-------------
Copy some extra utilities to the unit test directory
  $ cp ${TESTDIR}/run_and_wait.sh .

run root.submit with condor
  $ ./run_and_wait.sh root.submit
  All jobs done.

