print(2+3)

a = 2 + 3

print("O resultado é "..tostring(a))

-- nil = not in list

a = nil

 -- number : 

 x = 1
 y = 2.5
 r = 3.14

 address = 0x0000aaf8

 -- string

endereco = "Av Maracanã, 255"
tel = "(21) 1234-5678"

-- table -> é um tipo de dados estruturado

pessoa = {}

pessoa.nome = "Eric"
pessoa.idade = 36

pessoa =
{
    nome = "Raul",
    idade = "26",
    endereco = "Rua Borges, 123",
}

pares = {
    0,2,4,6,8,10
}

-- function : são as funções

function soma(a,b)
    return a+b
end

print(soma(1,2))