local Pair = require("pair")

p1 = Pair(3,4)
p2 = Pair(10,20)

function test_soma()
    print(p1+p2)
end

function test_sub()
    print(p1-p2)
end

function test_prod()
    print(p1*p2)
end

function test_div()
    print(p1/p2)
end

test_soma()

test_sub()

test_prod()

test_div()

print(p1:sum())
print(p1:prod())
print(p1:abs())

