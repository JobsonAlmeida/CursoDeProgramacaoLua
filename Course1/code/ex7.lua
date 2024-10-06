s1 = 'agua'

s2 = 'abacate'

s3 = "I\"m ok"

s4 = [[
Este e um 'texto'
com quebra de linha
]]

s5 = "Este é um 'texto'\n \"quebra\" de linha "
print("O comprimento é: "..tostring(#s1))

print(table.concat({"Agua", "do", "mar"}, ","))


--criando a função join na linguagem lua
function join(sep, words) 
    return table.concat(words, sep)
end

print(join(",", {"Agua", "do", "mar"}))

print("Cachorro" .. "quente")


s3 = 'AbcDEfghi'
print("!"..string.sub(s3, 10, 17).."!")

print(string.upper(s3))
print(string.lower(s3))