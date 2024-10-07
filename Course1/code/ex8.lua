

a = {[1]=10, [2]=20, [3]=30}
a = {10,20,30}


a[4] = 40


a["n"] = 4
a["count"] = 4

table.insert(a, 99)
table.insert(a, 100) -- put the value at the end
table.insert(a, 2, 20000) -- open a space into the table in the specific index and put the specific value

table.remove(a) -- remove the last element

print("--------")
for key, value in pairs(a) do
    print(key, value)
end
print("--------")


print("---next---")
i, v = next(a)
i, v = next(a, i)
i, v = next(a, i)
i, v = next(a, i)
i, v = next(a, i)
i, v = next(a, i)
i, v = next(a, i)
i, v = next(a, i)
i, v = next(a, i)
print(i, v)

print("-----------")

print(a[1])
print(a[2])
print(a[3])
print(a[4])
print(a[5])
print(a[6])
print(a[7])
print(a["count"])
print(a.count) -- the dot is used with property
a.count = 5
print(a.count)

-- o # fornece apenas o tamanho dos índices numéricos. Os indices que não são numericos não são levados em consideração
-- Esse # é usado especificamente quando queremos tratar as nossas tabelas 
print("O tamanho da tabela a eh:"..#a) 
print("O tamanho da tabela a eh:"..a["n"])


usuario = 
{
    nome = "Joao",
    idade = 22,
    ["idade do joao"] = 22
}


print(usuario.nome)
print(usuario.idade)
print(usuario["idade do joao"])


-- if a[4]== nil then
--     print("O elemento 4 não existe")
-- end

val = {1,2, 3, 4}

function soma(a, b, c, d)
    return a+b+c+d
end

-- print(soma(val[1], val[2]))
print(soma(table.unpack(val)))
print(type( soma(table.unpack(val)) ))