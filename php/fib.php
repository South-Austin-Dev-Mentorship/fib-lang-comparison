<?php
# a slow dumb fib function
function fib($n) {
    if ($n == 0 or $n == 1) {
        return 1;
    }
    else {
        return fib($n-1) + fib($n-2);
    }
}

$a = $argv[1];
echo fib($a) . "\n";
?>
