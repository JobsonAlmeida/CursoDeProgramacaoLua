a =1
b = -2
c = 1

function bhask (a, b, c)
    local delta = b^2 -4*a*c
    local x1 = (-b-math.sqrt(delta))/(2*a)
    local x2 = (-b+math.sqrt(delta))/(2*a)

    return x1, x2
end

p, q, r, s= bhask(a,b,c)

print(p)
print(type(p))

print(q)
print(type(q))

print(r)
print(type(r))

print(s)
print(type(s))

-- varargs

function concatenar(...)
    local args = {...}
    local ret = ""
    for i, str in pairs(args) do
        ret = ret..str
    end
end


print("---------------------")

function testevargs(...)
    print(...)
    -- abc = {"fda", "ada", "fdafa"}

    -- argsva = {...}
    -- print(argsva)
    -- print(table.unpack(argsva))

    -- for i, v in pairs(argsva) do
    --     print(i, v)
    -- end
end

testevargs("abc", "def", "ghi")

---

function genSoma(parcela)

    local s = function(b)
        return parcela + b
    end

    return s

end


soma2 = genSoma(2)

print(soma2(10))
