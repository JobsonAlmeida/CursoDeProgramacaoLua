function moedasToString(res)
    local result = ""
    for i, moeda in ipairs(res) do
        result = result.."Nome: "..moeda.nome .. "\n"
        result = result.."Simbolo: "..moeda.simbolo.."\n"
        result = result.."Pais: "..moeda.pais.."\n"
        result = result.."\n"
    end
    return result
end


function split(texto, sep)
    local partes = {}

    local posQuebra, fimQuebra = string.find(texto, sep)
    
    if posQuebra ~= nil then
        fimParte = posQuebra -1
    end
    local parte = string.sub(texto, 1, fimParte)
    table.insert(partes, parte)

    while posQuebra ~= nil do
        local iniParte = fimQuebra
    end


end


res = trim("    agua     ")

print(res)