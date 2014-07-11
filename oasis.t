check OASIS and PALMS
---------------------
  $ source /cvmfs/oasis.opensciencegrid.org/osg/palms/setup
  $ palms list > palms.txt
  $ grep python palms.txt
  python         Linux   x86_64  * (glob)
  python         Linux   x86_64  * (glob)
  python         Linux   i386    * (glob)

  $ palmsdosetup R
  $ R --version
  R version 3.0.1 (2013-05-16) -- "Good Sport"
  Copyright (C) 2013 The R Foundation for Statistical Computing
  Platform: x86_64-unknown-linux-gnu (64-bit)
  
  R is free software and comes with ABSOLUTELY NO WARRANTY.
  You are welcome to redistribute it under the terms of the
  GNU General Public License versions 2 or 3.
  For more information about these matters see
  http://www.gnu.org/licenses/.
  