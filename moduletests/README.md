Instructions for creating new module unit tests
-----------------------------------------------

The unit tests utilize Suchandra's existing module tests at https://github.com/OSGConnect/modulefiles/tree/master/tests. For each of Suchandra's tests, perform the following steps. These instructions will use the curl module as an example. 

#### Creating the cram file 


1. Go to the above GitHub repository containing Suchandra's tests and navigate to the module you're creating a unit test for. Look in the check_<module name>.submit file and note the last non-empty line before all of the "Requirements" lines. For example, the last non-empty line for [check_curl.submit](https://github.com/OSGConnect/modulefiles/blob/master/tests/curl/check_curl.submit) is line number 9.

**Note: if you see multiple check_<name>.submit files, note the appropriate line numbers for each file and use python_module.t as your template in the next step.**

2. Clone the unit-tests repository and navigate to the moduletests:
``` 
$ git clone https://github.com/OSGConnect/unit-tests.git
$ cd unit-tests/moduletests
```

3. Copy an existing unit test as a template for the new test, replacing the name of the template module with the new module name inside the test. For example, using the octave module test as a template for the curl module, enter:
```
$ sed 's;octave;curl;g' octave_module.t > curl_module.t 
```

4. Back in your new unit test file (e.g. curl_module.t), replace the "10" in the following line with the line number you noted in step 1 (i.e. "9" for the curl module). 

So, turn the "10" to the appropriate number on this line:
```
$ cat check_curl.new2 | head -10 > check_curl.new3
```

5. Similarly, replace the "11" on line 12 of the unit test to the number you noted + 1 (e.g. "10" for the curl module). Then replace the "12" on line 14 of the unit test to the number you noted + 2 (e.g. "11" for the curl module).

6. Add and commit the new test:
```
$ git add curl_module.t
$ git commit -m "initial commit"
$ git push origin master
```

#### Create a new item on Jenkins

1. Go to http://build.ci-connect.net:8080/job/UChicago_Connect_Tests/view/Module_Tests/ and select "New Item". Enter the new item name as "Module_<Module Name>", e.g. "Module_Curl". Then choose "Copy Existing Item" and copy from "Module_Octave" or any other existing "Module_<Name>" item. 

2. In the item description at the top of the page and the "Execute shell" step at the bottom of the page, change all instances of "Octave" or "octave" to the new module name, maintaining any prior capitalization. 

3. Click "Apply", and you're done!
  
4. Click "Build Now" on the left just to make sure that the test succeeds. If not, check the console output of the failed build to debug the problem.
 

   