print("Type the first grade:")
local n1 = tonumber(io.read())

print("Type the second grade:")
local n2 = tonumber(io.read())

print("Type the third grade:")
local n3 = tonumber(io.read())

print("Type the four grade:")
local n4 = tonumber(io.read())

local average = (n1+n2+n3+n4)/4

print("The average between "..n1..", "..n2..", "..n3.." and "..n4.." is: "..average)