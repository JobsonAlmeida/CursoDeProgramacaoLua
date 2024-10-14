--1. Create a Lua script that initializes a variable with the age of the user. The program should display 
--a message saying if the user is legally allowed to vote and/or drink according to the current 
-- laws of Brazil. A person needs to be at least 16 years old to vote in Brazil, and at least 18 years old to
-- drink.


io.write('Type your age: ')
age = tonumber(io.read())

if age >= 18 then
    io.write("You are allowed to vote and drink.")
elseif age>=16 and age <18  then
    io.write("You are allowed to vote, but not to drink.")
else
    io.write("You are neither allowed to vote nor to drink")
end
