

local stringUtils = {

}

function stringUtils.trim(str)
    str = string.gsub(str, "^%s+", "")
    str = string.gsub(str, "%s+$", "")
    return str
end

print("dentro do stringUtils")

return stringUtils -- em lua é possível retornar uma tabela local que contém os métodos para exportação 

