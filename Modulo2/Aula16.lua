-- io.output("Arquivo.txt") --selecionar um arquivo 

-- io.write("Olá, Mundo!")
-- io.write("Oi2!")

-- io.close() -- Close the file conections that has been open previously 

io.input("Arquivo.txt")

local res = io.read("*number") -- this method read is reading the file and not the input data from the computer keyboard. 
                       -- The reason is because the file was opened with the input mehtod. If we want to get the data 
                       -- from the computer keyboard we must close the file first. 

print(res)