function ex1()
    a = {}
    Pair ={}
    result = setmetatable(a, Pair)
    -- result = setmetatable({}, meta) -- a função setmetatable retorna a própria tabela original para a criação da metatable. Isso pode ser útil em algumas situaçãoes em que não temoas a tabela original de antemão e definimos essa tabela na própria função setmetatable.   
    print(result == a)
    print(getmetatable(a) == Pair)
end

-- ex1()

function ex2()
    local a = {}

    print(a)

end

--ex2()

-- print("----metamethods----")

a = {
    name = "Meu nome"
}
-- print(a)

Pair = {
    __tostring = function(self)
        return self.name
    end
}
setmetatable(a, Pair)
-- print(a)

_f = string.format

function ex_index()

    -- local defaults = {
    --     age = 20,
    --     address = "Rua B"
    -- }

    --It is very common use the own metatable as defaults table
    local meta = {
        
        age = 20,
        address = "Rua B"
    }

    -- meta.__index = function(t, key)
    --     print(_f("__index: O campo %s nao existe", key))
    --     return "a"
    -- end

    -- meta.__index = function(t,key)
    --     return defaults[key]
    -- end
    
    -- Considerando que já existe a tabela defaults que contem os valores padrão 
    -- de variáveis e devido ao fato de ser muito comum fazer com que o metametodo __index da metatable 
    -- recebe uma função que retorna a tabela defaults com a chave key como está abaixo

    -- meta.__index = function(t,key)
    --     return defaults[key]
    -- end 
    
    -- Foi criado o atalho meta.__index = defaults que faz a mesma coisa 
    meta.__index = meta  -- Esse é um atalho para endereçar uma tabela como index. Se quisermoas algo mais
                         -- poderoso temos que passar a função. Podemos passar qualquer tabela para o método
                         -- __index. As tabelas mais comuns são nomeadas de defaults e de meta. 


    ----------------------------------------------

    -- Ordem do que acontece quando procuramos uma propriedade que não existe em uma tabela 
    -- Eu tenho uma tabela A
    -- Eu tenho uma metatable meta associada à tabela original A
    -- É na metatable que eu coloco o metamétdo __index
    -- Eu posso ter uma outra tabela por exemplo chamada defaults que contem as propriedades que a tabela A
       -- originalmente não possui
    -- O metamétodo __index da tabela metatable meta recebe uma função que por sua vez retorna a tabela defaults
      -- procurando pela propriedade desejada

      meta.__index = function(t, key)  -- O interpretador do lua passa automaticamente a tabela orignal no 
        return defaults[key]           -- primeiro parâmetro que chamamos de t e a chave alvo da busca no 
      end                              -- segundo parâmetro que chamamos de key 
    
    -- Ou seja, quando a propridade key não é encontrada na tabela original A, o interpretador vai executar a
    -- função __index que está presente na metatable associada à tabela original A. Podemos fazer qualquer coisa
    -- nessa função, mas o mais comum é fazer com que essa função retorne a procura da chave key que queremos
    -- em uma outra tabela por exemplo uma tabela chamada defaults 

    -- Como nós queremos apenas que a função associada ao métametodo __index retone a procura em uma outra 
    -- tabela, existe um atalho para reescrever toda a função escrevendo apenas o nome da tabela. Esse é o atalho 
    -- meta.__index = defaults
    -- é muito comum a própria metatable ser a tabela que possui os por isso o atalho fica meta.__index = meta  

    local a = setmetatable({name = "Meu nome"}, meta)
    print(a.name)
    print(a.age) -- prints nil
    print(rawget(a, "age")) -- lê o valor da tabela sem nenhum acesso a metatable
    print(a.address)

end

function ex_newindex()

    local values = {}
    local meta = {}
    function meta.__newindex(self, key, value)
        print(_f('__newindex: Tentando atribuir "%s" ao campo "%s"', value, key))
        -- rawset(self, key, value) -- rawset sets the value into the table whithout invoking the __newindex metamethod. 
        values[key] = value
    end

    -- meta.__newindex = values is just a shortcut to:
    --
    -- function meta.__newindex(self, key, value)
    --     print(_f('__newindex: Tentando atribuir "%s" ao campo "%s"', value, key))
    --     -- rawset(self, key, value) -- rawset sets the value into the table whithout invoking the __newindex metamethod. 
    --     values[key] = value
    -- end

    meta.__newindex = values

    local a = setmetatable({name = "Meu nome"}, meta)

    a.age = 30    
    print(a.age)
    print(values.age)

end

-- ex_newindex()

minhaTabela = 
{
    name = 'Joao',
    age = 28

}

Pair ={
    __newindex = function (self, key, value)
        print(_f('__newindex: Tentando atribuir "%s" ao campo "%s"', value, key))
        rawset(self, key, value) -- rawset sets the value into the table whithout invoking the __newindex metamethod. 
    end
}

-- minhaTabela = setmetatable(minhaTabela, meta )
-- print(minhaTabela.name)
-- print(minhaTabela.age)
-- minhaTabela.address = "Rua das Alfafas"
-- print(minhaTabela.address)
-- minhaTabela.address = "Rua das ABCDEF"
-- print(minhaTabela.address)
-- minhaTabela.address = "Rua das XYZ"
-- print(minhaTabela.address)


-- for k, v in pairs(getmetatable("").__index) do
--     print(k,v)
-- end


-- print(string.format == getmetatable("").__index.format)

function ex_str()

    s = "a,b"

    -- como o metodo __index de string utiliza a mesma tabela que string, então temos
    -- diferentes formas de chamar o mesmo método gsub ou qualquer outro método de string
    print(s.gsub(s, ",", ''))
    print(s:gsub(",", ''))
    print(string.gsub(s, ",", ''))
end

ex_str()