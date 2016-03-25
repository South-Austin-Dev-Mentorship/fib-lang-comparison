local ffi = require("ffi")
ffi.cdef([[
int fib(int);
]])
local libfib = ffi.load("fib")

a = arg[1]
print(libfib.fib(a))
