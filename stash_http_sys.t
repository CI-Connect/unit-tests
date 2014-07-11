Note: must run on osgconnect to save in user's stash

make a basic file
-----------------
  $ mkdir test_dir
  $ touch test_dir/test.txt
  $ echo "touch test2.txt\necho 'hello world' > test2.txt" > test_dir/test.txt

check files
  $ cat test_dir/test.txt
  touch test2.txt
  echo 'hello world' > test2.txt

  $ cat test2.txt
  hello world 

Making file accessible on HTTP
------------------------------
  $ scp test2.txt ~/data/public
  $ chmod 644 ~/data/public/test2.txt
  $ cp -a test_dir ~/data/public/test_dir
  $ chmod 755 ~/data/public/test_dir
  $ chmod 644 ~/data/public/test_dir/test.txt

Accessing files using wget
--------------------------
  $ mkdir tmp
  $ cd tmp
  $ wget -q --no-check-certificate http://stash.osgconnect.net/+antonyu/test_dir
  $ wget -q --no-check-certificate http://stash.osgconnect.net/+antonyu/test2.txt

verify files received
  $ ls test2.txt
  test2.txt

  $ ls test_dir/test.txt
  test.txt

verify correct output
  $ cat test_dir/test.txt
  touch test2.txt
  echo 'hello world' > test2.txt

  $ cat test2.txt
  hello world
