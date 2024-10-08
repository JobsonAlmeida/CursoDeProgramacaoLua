-- print(package.path)
package.path = package.path.."akkabak\\jba\\?.lua"
-- print(package.cpath)
-- os.exit()

-- dofile("stringUtils.lua")
-- dofile("stringUtils.lua")
-- require("stringUtils")
SU = require "stringUtils" --veja que de acordo com o código de retorno presente em stringUtils o que é retornado 
                           -- é uma tabela. Logo, SU fica sendo uma tabela. 


str1 = "        abcd       "
print(str1)
print(SU.trim(str1))