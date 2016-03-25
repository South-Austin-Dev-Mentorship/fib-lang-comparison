//PRODUCES POSITION INDEPENDENT OBJECT FILE
gcc -O3 -c -fPIC fib.c -o fib.o

//PRODUCES SHARED LIBRARY
gcc -shared -fPIC -Wl,-soname,libfib.so.1 -o libfib.so.1.5.0 fib.o -lc

library should be added to your library path (I copied over to /usr/local/lib/libfib.so and changed permissions)
