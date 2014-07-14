Note: must run on osgconnect to access user's stash

prologue
--------
  $ mkdir test_dir
  $ touch test_dir/test.txt
  $ echo "hello world" > test_dir/test.txt

  $ cat test_dir/test.txt
  hello world

Making file accessible on HTTP
------------------------------
  $ cp -a test_dir ~/data/public/test_dir
  $ chmod 755 ~/data/public/test_dir
  $ chmod 644 ~/data/public/test_directory/test.txt

Accessing files using wget
--------------------------
  $ mkdir tmp
  $ cd tmp
  $ wget -q --no-check-certificate http://stash.osgconnect.net/+antonyu/test_dir/test.txt

verify file received
  $ ls test.txt
  test.txt

  $ cat test.txt
  hello world