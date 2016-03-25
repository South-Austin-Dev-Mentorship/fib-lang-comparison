#include <iostream>
#include <cstdlib>

int fib(int n) {
	if (n == 0 || n == 1) {
		return 1;
	}
	else {
		return fib(n-1) + fib(n-2);
	}
}

int main(int argc, char *argv[]) {
	if (argc < 2) {
		std::cout << "Please enter moar\n";
	}
	else {
		int n = atoi(argv[1]);
		int x =  fib(n);
		std::cout << x << "\n";
	}
}
