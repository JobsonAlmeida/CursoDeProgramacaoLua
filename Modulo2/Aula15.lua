
::Inicio:: --label

print("Informe a sua idade: ")
local idade = tonumber(io.read())
local tipo = type(idade)

print("tipo: "..tipo)

if tipo == "number" then
    print("Sua idade foi aceita!")
else
    print("Isso não é uma idade válida, tente de novo")
    goto Inicio

end



-- print("-------------------------")

-- if idade > 0 and idade <100 then
--     print("primeiro if") 
-- end

-- if 0 < idade and idade < 100 then
--     print("segundo if")  
-- end

-- --there is not range conditional in lua language
-- if 0 < idade < 100 then
--     print("segundo if")  
-- end

