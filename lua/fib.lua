-- a slow dumb fib function
function fib (n)
  if n == 0 or n == 1 then
    return 1
  else
    return fib(n-1) + fib(n-2)
  end
end

--print("enter a number:")
--a = io.read("*number")        -- read a number

a = arg[1]
print(fib(a))
