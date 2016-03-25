local ffi = require("ffi")
ffi.cdef([[
int fib(int);
]])
local libfib = ffi.load("./libfib.so")

a = arg[1]
if a == nil then
	print("moar params")
else
	print(libfib.fib(tonumber(a)))
end
