require "oop"

-- Pair = class()

class "Pair" -- é o mesmo que class("Pair"), porém as duplas aspas já funcionam como delimitadores por isso não
             -- precisamos usar os parênteses. 

Pair.n = 0 

function Pair.init(self, x,y)
    self.x = x
    self.y = y
    Pair.n = Pair.n + 1
end

function Pair.abs(self)
    return math.sqrt(self.x^2 + self.y^2)
end

