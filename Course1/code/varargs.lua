

if _VERSION ~= 'Lua 5.1' then 
    unpack = table.unpack
end


function soma(...)
    local args = {...}
    local res = 0

    if type(args[1]) == 'table' then
        args = args[1]
    end
    for _, v in ipairs(args) do 
        res = res + v
    end
    return res
end

-- print(soma(2,3,4))

local function teste(a, ...)
    -- local a, b  = ...
    -- return a, b

    return ...
end

-- print(teste(2,3,4))
local c, d = teste(6,7,8)
-- print(c, d)


function ex1()
    print(soma(2,3,4,5))
end

-- ex1()

function ex3(...)
    return {...}
end

function pack(...)
    return {...}
end

function showTable(t)
    local res = {}
    for k, v in pairs(t) do
        table.insert(res, k .. "=" .. v)
    end    

    return table.concat(res, "\n")
end

function ex3()
    print(showTable(pack(10,20,30)))
end
-- print(ex3(1,2,3,"lua"))


function ex4()
    local t = {1,2,3,4,5}
    local s = soma(1,2,3,4,5)
    print(s)
    local s = soma(t)
    print(s)
end

ex4()

function ex5()

    function fn(...)
        local n = #{...}
        print(n)
    end

    fn(1)
    fn(1,10)
    fn(1,10,100)

end

-- ex5()