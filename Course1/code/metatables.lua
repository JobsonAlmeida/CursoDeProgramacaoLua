function ex1()
    a = {}
    meta ={}
    result = setmetatable(a, meta)
    -- result = setmetatable({}, meta) -- a função setmetatable retorna a própria tabela original para a criação da metatable. Isso pode ser útil em algumas situaçãoes em que não temoas a tabela original de antemão e definimos essa tabela na própria função setmetatable.   
    print(result == a)
    print(getmetatable(a) == meta)
end

-- ex1()

function ex2()
    local a = {}

    print(a)

end

--ex2()

print("----metamethods----")

a = {
    name = "Meu nome"
}
print(a)

meta = {
    __tostring = function(self)
        return self.name
    end
}
setmetatable(a, meta)
print(a)