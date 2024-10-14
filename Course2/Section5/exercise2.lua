-- 2. Create a script that initializes a variable with the current salary of an employee and another 
-- variable with how many years that employee works at the company. The program should calculate and 
-- display the bonus that the employee is entitled to get. The bonus is calculated based on a percentage of
-- the employee’s salary, and the percentage depends on how long the employee works at the company. 
-- If an employee works more than 5 years for the company, the bonus is 10% of the salary. If the employee
-- works less than 5 years, the bonus is 7% of the salary.

io.write("Enter employee salary: ")
salary = tonumber(io.read())

io.write("Enter years of service: ")
years = tonumber(io.read())

if years >= 5 then
    bonus = salary*0.1
else
    bonus = salary*0.07
end 

io.write(string.format("The employee bonus is %s", bonus))