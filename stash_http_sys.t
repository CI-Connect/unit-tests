Notes: 1) must run on osgconnect to access user's stash
       2) currently uploads file on Stash via Posix. Sending an HTTP PUT or POST request is not supported at the moment. It would require WebDAV, an extension to HTTP. When supported, replace "cp -a stash_http PATH-TO-STASH" with "curl -X POST -v -# -o output -T stash_http http://stash.osgconnect.net/+jenkins/system_tests/stash_http"

prologue
--------
  $ mkdir stash_http
  $ touch stash_http/http_test.txt
  $ ls stash_http/http_test.txt
  stash_http/http_test.txt

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