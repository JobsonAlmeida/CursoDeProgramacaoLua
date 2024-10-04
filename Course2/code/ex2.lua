
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

-- function soma(a,b)
--     return a+b
-- end

-- s = soma

-- print(soma(1,2))


-- thread 

-- lua é single thread sempre. Então esse tipo thread designa uma co-rotina que eu posso especificar e trabalhar em paraleo 
-- mas é sempre uma por vez. Não há paralelismo real em lua

-- userdata: tipos customizados definidos pelo usuário (em C)


var1 = 0 or 990 or {}
print(var1)