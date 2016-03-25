# a slow dumb fib function
def fib(n)
    if n == 0 or n == 1
        return 1
    else
        return fib(n-1) + fib(n-2)
    end
end

a = Integer(ARGV[0])
puts fib(a)
