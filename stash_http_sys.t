Note: must run on osgconnect to access user's stash

prologue
--------
  $ cd ~/Jenkins/workspace/OSG_Connect_Stash_HTTP/unit-tests
  $ cd tutorial-stash-http

Making file accessible on HTTP
------------------------------
  $ scp random_words ~/data/public
  $ chmod 644 ~/data/public/random_words
  $ cp -a test_directory ~/data/public/test_directory
  $ chmod 755 ~/data/public/test_directory
  $ chmod 644 ~/data/public/test_directory/test_file

Accessing files using wget
--------------------------
  $ mkdir tmp
  $ cd tmp
  $ wget -q --no-check-certificate http://stash.osgconnect.net/+antonyu/test_directory/test_file

verify file received
  $ ls test_file
  test_file
