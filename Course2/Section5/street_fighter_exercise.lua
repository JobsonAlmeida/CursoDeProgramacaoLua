local capitalize = require("capitalize")

io.write([[Choose the character: 
Ryu
Chun Li
Guile 
Honda
Ken
Blanka
]])

io.write("Type the name of the character you have chosen: ")
fighter_name = io.read()

if string.lower(fighter_name)== "ryu" or string.lower(fighter_name) == "ken" then
    attack_move = "Hadouken"
elseif string.lower(fighter_name) == "chun li" then
    attack_move = "Lightning Kick"
elseif string.lower(fighter_name) == "guile" then
    attack_move = "Sonic Boom"
elseif string.lower(fighter_name) == "honda" then
    attack_move = "Hundred Hand Slap"

elseif string.lower(fighter_name) == "blanka" then
    attack_move = "Electric Shock"
else
    attack_move = "Not Identified"
end

print(capitalize(fighter_name).." attacks with "..attack_move)



