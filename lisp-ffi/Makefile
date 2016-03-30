fib:
	gcc -O3 -c -fPIC fib.c -o fib.o
	gcc -shared -fPIC -o libfib.so fib.o -lc

clean:
	rm ./fib.o
	rm ./libfib.so
