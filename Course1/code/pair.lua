local _f = string.format
local unpack = table.unpack


--metatable da metatable
local meta = {}

-- metatable
local Pair = 
{
    __tostring = function (pair)
        return _f("(%s, %s)", unpack(pair) )
    end,

}

setmetatable(Pair, meta)

-- meta.__index = meta --Esse é o atalaho. A propriedade procurada (value) vai ser procurada na tabela meta fazendo meta[value]. 
                       -- É esse valor de meta[value] que é retornaddo e que é executado. 
Pair.__index = function(t, value)
    return Pair[value]
end


function meta.__call(self, x, y)
    return Pair.create(x,y)
end

function Pair.create(x,y)    
    return setmetatable({x,y}, Pair)
end

function Pair.__add(p1, p2) 
    return Pair.create(p1[1]+p2[1], p1[2]+p2[2])
end

function Pair.__unm(pair)

    return Pair(-pair[1], -pair[2])

end

function Pair.__sub(p1, p2)
    return p1+(-p2) -- a própria operação de soma já invoca a função createPair a qual associa a metatable ao par criado
end

function Pair.__mul(p1, p2)
    return Pair(p1[1]*p2[1], p1[2]*p2[2])
end


function Pair.__div(p1, p2)
    return Pair(p1[1]/p2[1], p1[2]/p2[2])
end


function Pair.sum(pair)
    return pair[1] + pair[2]
end

function Pair.prod(pair)
    return pair[1] * pair[2]
end

function Pair.abs(p)
    return math.sqrt(p[1]^2 + p[2]^2)
end


return Pair