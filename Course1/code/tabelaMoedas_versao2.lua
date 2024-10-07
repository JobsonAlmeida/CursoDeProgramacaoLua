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

nomeArquivoMoedas = "arquivo_original.csv"
arqMoedas= io.open(nomeArquivoMoedas, "r")
conteudo = arqMoedas:read("a")

posQuebra, fimQuebra = string.find(conteudo, "\n")
cabecalho = string.sub(conteudo, 1, posQuebra-1)

resultado = {}

while posQuebra ~= nil do
    local iniLinha = fimQuebra + 1
    posQuebra, fimQuebra = string.find(conteudo, "\n", iniLinha)
    if posQuebra then
        local fimLinha = posQuebra - 1
        linha = string.sub(conteudo, iniLinha, fimLinha)

        local nomeMoeda, simbolo, pais = string.match(linha, ";(.-) *;(.-) *;%d-;(.+)%s*$")

        if nomeMoeda == nil then
            break
        end

        local moeda = 
        {
            nome = nomeMoeda,
            simbolo = simbolo,
            pais = pais
        }

        table.insert(resultado, moeda)
    end
end

print(resultado[1].nome, resultado[1].simbolo, resultado[1].pais)
str1 = moedasToString(resultado)

print(str1)

nomeArquivoResultado = string.gsub(nomeArquivoMoedas, "(%w+)%.%w+$", "_%1_.txt")
arqResultado = io.open(nomeArquivoResultado, "w")
arqResultado:write(moedasToString(resultado))
