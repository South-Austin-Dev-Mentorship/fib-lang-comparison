#!/bin/bash
prj_root=$(dirname "$(readlink -f "$0")")
cwd=`pwd`

echo "Running LUA..." && time lua lua/fib.lua $1
echo "Running PHP..." && time php php/fib.php $1
echo "Running PYTHON..." && time python python/fib.py $1
echo "Running RUBY..." && time ruby ruby/fib.rb $1
echo "Running LISP..." && time sbcl --script lisp/fib.lisp $1
echo "Running PYPY..." && time pypy python/fib.py $1
echo "Running LUAJIT..." && time luajit lua/fib.lua $1
echo "Running JS..." && time node js/fib.js $1
echo "Running JAVA..." &&
	cd $prj_root/java &&
	time java Fib $1 &&
	cd $prj_root 
echo "Running LISP FFI..." && 
	cd $prj_root/lisp-ffi &&
	time sbcl --script fib.lisp $1 &&
	cd $prj_root
echo "Running LUAJIT FFI..." && 
	cd $prj_root/luaffi &&
	time luajit fib.lua $1 &&
	cd $prj_root
echo "Running CPP..." && time cpp/fib $1
echo "Running C..." && time c/fib $1
