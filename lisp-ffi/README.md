    //PRODUCES POSITION INDEPENDENT OBJECT FILE
    gcc -O3 -c -fPIC fib.c -o fib.o

    //PRODUCES SHARED LIBRARY
    gcc -shared -fPIC -Wl,-soname,libfib.so.1 -o libfib.so.1.5.0 fib.o -lc


## Notes for Mac OS X

* use `-install_name` instead of `-soname`
* call the shared object file `libfib.dylib` instead of `libfib.so...` 

