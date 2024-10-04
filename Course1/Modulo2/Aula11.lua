print(not 10)

local var = false
local var1 = false
local num1 = 30
local num2 = 30

local exp = (not var == var1)
print(exp)

local exp = var == var1 and num1 == num2
print(exp)

local exp = var == var1 or num1 == num2
print(exp)