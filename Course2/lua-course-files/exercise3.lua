--Create a Lua script to compute and display the result of how much money 1000 euros have grown 
-- after three years with a 5 percent interest rate. Assuming p is the bank interest rate in 
-- percent per year, A is the initial amount, and n is the number of years, we can use the formula
--  below to find the growth of money in the bank: A(1 + p/100)^n 

print("Type the amount: ")
A = io.read()

print("Type the bank interest rate in percentage: ")
p = io.read()

print("Type  the number of years: ")
n = io.read()

R = A*(1 + p/100)^n 

print(string.format("If you leave the amount of %s euros invested at an interest rate of %s%% for %s years you will have %s euros", A, p, n, R))
