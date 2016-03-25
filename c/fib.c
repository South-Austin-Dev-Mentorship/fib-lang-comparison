#include <stdio.h>
#include <stdlib.h>
#include <string.h>

// a slow dumb fib function
int fib(int n) {
    if (n == 0 || n == 1) {
        return 1;
    }
    else {
        return fib(n-1) + fib(n-2);
    }
}

int main(int argc, char *argv[]) {
    char *a;
    long x;
    long f;

    if (argc > 1) {
        a = argv[1];
        //x = atoi(a);
        printf("%d\n",fib(atoi(a)));
        //f = fib(x);
        //printf("%s\n", a);
        //printf("%ld\n", f);
    }
    else {
        printf("more args plz\n");
    }
}
