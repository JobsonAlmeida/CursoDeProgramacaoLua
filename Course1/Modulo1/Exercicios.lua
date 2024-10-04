print([[
-----------------------------------------
---------Calculadora de Areas------------
-----------------------------------------
- Digite a altura em seguida a largura: (na mesmas unidades)
]])

local alt = tonumber(io.read())
local lar = tonumber(io.read())

print("-------------------------------")
print("A area do quadrado é: "..alt*lar)
print("O dobro da area é: "..(alt*lar)*2)
print("-------------------------------")
