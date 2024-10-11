
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


class_mt = {}

Pair = setmetatable({}, class_mt)
Pair.__index = Pair

function class_mt.__call(_, x,y)
    return setmetatable(
        {
            x = x,
            y = y
        }, Pair)
end

function Pair.abs(self)
    return math.sqrt(self.x^2 + self.y^2)
end


p1 = Pair.new(1,2)
p2 = Pair.new(10,20)

print(p1:abs())