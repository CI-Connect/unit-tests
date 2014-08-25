Unit tests
==========

This repository contains unit tests for OSG Connect tutorials and system status tests for various Connects (OSG Connect, Duke Connect, UChicago Connect, etc.) 
These unit tests perform the following functions:
  1. Ensure that the OSG Connect job submission infrastructure is working properly
  2. Ensure that our tutorials are up to date with the latest features of OSG Connect. All of the tutorials can be found in the OSG ConnectBook (https://confluence.grid.iu.edu/display/CON/Home).

OSG Connect tutorial tests
--------------------------
In general, the following tests run the same commands that each corresponding ConnectBook tutorial asks users to follow in order to ensure that each command produces the expected output. The tests also check that any given source code functions correctly. The relevant tutorial unit tests are listed here, along with links to the corresponding ConnectBook and Jenkins build pages.

htcondor_transfer.t - Unit test for the "Transferring data with HTCondor" tutorial (https://confluence.grid.iu.edu/display/CON/Transferring+data+with+HTCondor). The complete Jenkins build information for the test can be found at http://build.ci-connect.net:8080/job/OSG_Connect_Tests/job/OSG_Connect_HTCondor_transfer/. Note: this unit test also functions as a system status test.

oasis_parrot.t - Unit test for the "Software access using OASIS and Parrot" tutorial (https://confluence.grid.iu.edu/display/CON/Software+access+using+OASIS+and+Parrot). The complete Jenkins build information for the test can be found at http://build.ci-connect.net:8080/job/OSG_Connect_Tests/job/OSG_Connect_Oasis_Parrot/

octave.t - Unit test for the Octave application example (https://confluence.grid.iu.edu/display/CON/Example+Application+-+Octave). The complete Jenkins build information for the test can be found at http://build.ci-connect.net:8080/job/OSG_Connect_Tests/job/OSG_Connect_Octave/

pegasus.t - Unit test for the Pegasus tutorial (https://confluence.grid.iu.edu/display/CON/Using+Pegasus+to+manage+jobs). The complete Jenkins build information for the test can be found at http://build.ci-connect.net:8080/job/OSG_Connect_Tests/job/OSG_Connect_Pegasus/ 

photodemo.t - Unit test for the "Photo Analysis Demo" (https://confluence.grid.iu.edu/display/CON/Photo+Analysis+Demo). The complete Jenkins build information for the test can be found at http://build.ci-connect.net:8080/job/OSG_Connect_Tests/job/OSG_Connect_Photodemo/  

quickstart.t - Unit test for the "OSG Connect Quickstart" tutorial (https://confluence.grid.iu.edu/display/CON/OSG+Connect+Quickstart). The complete Jenkins build information for the test can be found at http://build.ci-connect.net:8080/job/OSG_Connect_Tests/job/OSG_Connect_Quickstart/

R.t - Unit test for the R application example (https://confluence.grid.iu.edu/display/CON/Application+Example+-+R). The complete Jenkins build information for the test can be found at http://build.ci-connect.net:8080/job/OSG_Connect_Tests/job/OSG_Connect_R/

root.t - Unit test for the ROOT application example (https://confluence.grid.iu.edu/display/CON/Application+Example+-+ROOT). The complete Jenkins build information for the test can be found at http://build.ci-connect.net:8080/job/OSG_Connect_Tests/job/OSG_Connect_Root/

scaling.t - Unit test for the "Scaling up to more resources" tutorial (https://confluence.grid.iu.edu/display/CON/Scaling+up+to+more+resources). The complete Jenkins build information for the test can be found at http://build.ci-connect.net:8080/job/OSG_Connect_Tests/job/OSG_Connect_Scaling/

software.t - Unit test for the "Software access using HTCondor or the Web" tutorial (https://confluence.grid.iu.edu/display/CON/Software+access+using+HTCondor+or+the+Web). The complete Jenkins build information for the test can be found at http://build.ci-connect.net:8080/job/OSG_Connect_Tests/job/OSG_Connect_Software/

stash_http.t - Unit test for the "Access Stash remotely from your job using HTTP" tutorial (https://confluence.grid.iu.edu/display/CON/Access+Stash+remotely+from+your+job+using+HTTP). The complete Jenkins build information for the test can be found at http://build.ci-connect.net:8080/job/OSG_Connect_Tests/job/OSG_Connect_Stash_HTTP/

swift.t - Unit test for the "Using SWIFT on OSG Connect" tutorial (https://confluence.grid.iu.edu/display/CON/Using+SWIFT+on+OSG+Connect). The complete Jenkins build information for the test can be found at http://build.ci-connect.net:8080/job/OSG_Connect_Tests/job/OSG_Connect_Swift/

System status tests
-------------------
The following tests check to ensure that various systems in place on OSG Connect and other Connects are functioning properly. The respective links to Jenkins contain build information about the tests running on OSG Connect. For build information on tests running on other Connects, choose the appropriate Connect on the Jenkins build server at http://build.ci-connect.net:8080/.

htcondor_transfer.t - Unit test checking that users can submit jobs and transfer files using HTCondor. The complete Jenkins build information for the test can be found at http://build.ci-connect.net:8080/job/OSG_Connect_Tests/job/OSG_Connect_HTCondor_transfer/. Note: this unit test also functions as a tutorial test.

oasis.t - Unit test checking that users can access and download software from OASIS (the OSG Application and Software Installation Service). The complete Jenkins build information for the test can be found at http://build.ci-connect.net:8080/job/OSG_Connect_Tests/job/OASIS/

stash_globus.t - Unit test checking that users can both read from and write into Stash via Globus. The complete Jenkins build information for the test can be found at http://build.ci-connect.net:8080/job/OSG_Connect_Tests/job/Stash_Globus/

stash_http_sys.t - Unit test checking that users can read from Stash via HTTP. The complete Jenkins build information for the test can be found at http://build.ci-connect.net:8080/job/OSG_Connect_Tests/job/Stash_HTTP/. Note: The test writes into Stash via POSIX, as the functionality for writing to Stash via HTTP has not been implemented yet. 

stash_posix.t - Unit test checking that users can read from and write into Stash via POSIX. The complete Jenkins build information for the test can be found at http://build.ci-connect.net:8080/job/OSG_Connect_Tests/job/Stash_POSIX/

Cluster-specific tests
----------------------
The following tests ensure that users can submit jobs to the respective campus clusters (e.g. Duke University's Blue Devil cluster).

duke_bluedevil.t - Unit test checking that users can submit jobs to Duke University's Blue Devil cluster. The complete Jenkins build information for the test can be found at http://build.ci-connect.net:8080/job/Duke_Connect_Tests/job/Duke_BlueDevilCluster/

syracuse.t - Unit test checking that users can submit jobs to Syracuse University's cluster. The complete Jenkins build information for the test can be found at http://build.ci-connect.net:8080/job/OSG_Connect_Tests/job/Syracuse_Test/