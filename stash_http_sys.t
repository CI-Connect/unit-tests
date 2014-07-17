Note: must run on osgconnect to access user's stash

prologue
--------
  $ mkdir stash_http
  $ touch stash_http/http_test.txt
  $ ls stash_http/http_test.txt
  stash_http/http_test.txt
  $ ls stash_http/http_test.txt

Making file accessible on HTTP
------------------------------
  $ cp -a stash_http ~/data/public/system_tests/stash_http
  $ chmod 755 ~/data/public/system_tests/stash_http
  $ chmod 644 ~/data/public/system_tests/stash_http/http_test.txt

Accessing files using wget
--------------------------
  $ mkdir tmp
  $ cd tmp
  $ wget -q --no-check-certificate http://stash.osgconnect.net/+jenkins/system_tests/stash_http/http_test.txt

verify file received
  $ ls http_test.txt
  http_test.txt

Clean up
--------
  $ cd ~/data/public/system_tests
  $ rm -rf stash_http
  $ ls stash_http
  ls: cannot access stash_http: No such file or directory
  [2]