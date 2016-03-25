// terribly inefficient implementation of Fibonacci Sequence
function fib(n) {
    if (n == 0 || n == 1) {
        return 1;
    }
    else {
        return fib(n-1) + fib(n-2);
    }
}

var a = parseInt(process.argv[2]);
console.log( fib(a) );

