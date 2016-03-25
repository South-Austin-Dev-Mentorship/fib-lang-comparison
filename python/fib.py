# a slow dumb fib function
def fib (n):
  if n == 0 or n == 1:
    return 1
  else:
    return fib(n-1) + fib(n-2)

import sys
a = int(sys.argv[1])
print(fib(a))

#a = int(raw_input("enter a number: "))
#print(fib(a))
