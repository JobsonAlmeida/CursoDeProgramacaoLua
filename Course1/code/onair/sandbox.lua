
-- Through closure we can created private variables to our object (which in its turn are created using tables) 
function Pair(_x, _y)
    local x, y = _x, _y -- The only way to access the variables x and y is thorugh the methods getX and getY
    return {
        getX = function ()
            return x
        end,

        getY = function()
            return y
        end
    }
end

-- p = Pair(10, 20)

-- print(p.x)
-- print(p.getX(), p.getY()) 


-- creating an object (which is an table) and  placing the method in the object itself
function abs(self)
    return math.sqrt(self.x^2 + self.y^2)
end

function createPair(x,y)
    return {
        x = x,
        y = y,
        abs = abs,
    }
end

p1 = createPair(1,2)
p2 = createPair(10,20)
-- print(p1:abs())
-- print(p2:abs())

------------

---------------------------------------------

-- Pair = setmetatable({}, class_mt)
-- Pair.__index = Pair

-- function Pair.init(self, x,y)
--     self.x = x
--     self.y = y
-- end

-- function Pair.abs(self)
--     return math.sqrt(self.x^2 + self.y^2)
-- end

-- p1 = Pair(1,2) 
-- p2 = Pair(10,20)

-- print(p1:abs())

-- ----- Classe Player
-- --- Perceba que como já temos a class_mt definida a partir daqui nós só precisamos nos preocupar em 
-- --- modelar a tabela Player. É lógico que ainda há a linha de comando do setmetatable relaciona a 
-- --- tabela class_mt como metatable da tabela Player. Porém, com a tabela class_mt já definida, a partir
-- --- daqui nós nos preocupamos apenas em modela a tabela Player. 
-- Player = setmetatable({}, class_mt)
-- Player.__index = Player

-- -- Inicializador
-- function Player.init(self, hp, damage, color)
--     self.hp = hp
--     self.damage = damage
--     self.color = color
-- end

-- function Player.attack(self, defender)
--     defender.hp = defender.hp - self.damage
-- end

-- function Player:__tostring()
--     return string.format("Player(hp=%s, damage=%s, color=%s)", self.hp, self.damage, self.color)
-- end

-- player1 = Player(100,10, "blue")
-- player2 = Player(100,20, "red")

-- print()
-- print(player1)
-- print(player2)
-- print()
-- player1:attack(player2)

-- print(player1)
-- print(player2)
