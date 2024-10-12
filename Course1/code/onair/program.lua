require "Pair"
require "Player"

function exPair()
    print("Pair.n: "..Pair.n)
    p1 = Pair(3,4)
    print("Pair.n: "..Pair.n)
    p2 = Pair(30,40)
    print("Pair.n: "..Pair.n)
    print(p1:abs())
    print(p2:abs())
end

function exPlayer()
    player1 = Player(100,10, "blue")
    player2 = Player(100,20, "red")

    print()
    print(player1)
    print(player2)
    print()
    player1:attack(player2)

    print(player1)
    print(player2)
end

require "Point"
function exPoint()
    local p = Point(3,4) 
    print(p:abs())
end

exPoint()