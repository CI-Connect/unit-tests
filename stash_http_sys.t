Note: must run on osgconnect to save in user's stash

make a basic file
-----------------
  $ mkdir test_dir
  $ touch test_dir/test.sh
  $ echo "echo 'hello world' > test.txt" > test_dir/test.sh
  $ chmod +x test_dir/test.sh
  $ ./test_dir/test.sh

check files
  $ cat test_dir/test.sh
  echo 'hello world' > test.txt

  $ cat test2.txt
  hello world 

Making file accessible on HTTP
------------------------------
  $ scp test.txt ~/data/public
  $ chmod 644 ~/data/public/test.txt
  $ cp -a test_dir ~/data/public/test_dir
  $ chmod 755 ~/data/public/test_dir
  $ chmod 644 ~/data/public/test_dir/test.sh

Accessing files using wget
--------------------------
  $ mkdir tmp
  $ cd tmp
  $ wget -q --no-check-certificate http://stash.osgconnect.net/+antonyu/test_dir
  $ wget -q --no-check-certificate http://stash.osgconnect.net/+antonyu/test.txt

verify files received
  $ ls test.txt
  test.txt

  $ ls test_dir/test.sh
  test.sh

verify correct output
  $ cat test_dir/test.sh
  echo 'hello world' > test2.txt

  $ cat test.txt
  hello world
