-- 4. Create a simple script that initializes a variable with the value of the length of the radius of 
-- a circle. The script should compute and display the value of the area of the circle. 
-- For a radius r, the area of a circle is calculated using the following formula: Area = pi*r^2

io.write("Enter the cricle radius: ")
r = io.read()

print(string.format("For a circle of radius %s the area is %s", r, 3.14*(r^2) ))
