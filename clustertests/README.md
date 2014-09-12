Instructions for creating new target cluster unit test
------------------------------------------------------

#### Create the Cram file


1) Copy an existing unit test as a template
```
$ cp uchicago_osg.t [new_name].t
```

2) Edit the sed command on line 29 of the file, replacing the Requirement line with the correct line for the target cluster. 

#### Create the Jenkins item 

1) Go to http://build.ci-connect.net:8080/, select the correct Connect the test will run on, and then select "New Item" on the left side of the page. Enter the new item name. Then choose "Copy Existing Item" and copy from an existing cluster test (e.g. "OSG_Connect_Tests/Syracuse_Test").

2) Edit the "item description" at the top of the page and the "Execute shell" at the bottom of the page, changing anything test-specific. Also, change which build slave the test is tied to if necessary. 

3) Click "Apply", and you're done!

4) Click "Build Now" on the left just to make sure that the test succeeds. If not, check the console output of the failed build to debug the problem.