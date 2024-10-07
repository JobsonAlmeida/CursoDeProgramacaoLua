
function tostring(res)
    local result = ""
    for i, moeda in ipairs(res) do
        result = result.."Nome: "..moeda.nome .. "\n"
        result = result.."Simbolo"..moeda.simbolo.."\n"
        result = result.."Pais"..moeda.pais.."\n"
        result = result.."\n"
    end

    return result
end

nomeArquivoMoedas = "arquivo_original.csv"
arqMoedas= io.open(nomeArquivoMoedas)
conteudo = arqMoedas:read("a", "r")

posQuebra, fimQuebra = string.find(conteudo, "\n")
cabecalho = string.sub(conteudo, 1, posQuebra-1)


resultado = {}


while posQuebra ~= nil do
    local iniLinha = fimQuebra + 1
    posQuebra, fimQuebra = string.find(conteudo, "\n", iniLinha)
    local fimLinha = posQuebra - 1
    linha = string.sub(conteudo, iniLinha, fimLinha)

    local nomeMoeda, simbolo, pais, primeiraLetra = string.match(linha, ";(.-) *;(.-) *;%d-;((%a).-) *;")

    local moeda = 
    {
        nome = nomeMoeda,
        simbolo = simbolo,
        pais = pais
    }

    table.insert(resultado, moeda)

end

print(resultado[1])
str1 = tostring(resultado)

print(str1)
--trabalhando com capturas. As capturas podem ser utilizadas com o %numero
nomeArquivoResultado = string.gsub(nomeArquivoMoedas, "(%w+)%.%w+$", "_%1_.txt")
arqResultado = io.open(nomeArquivoResultado, "w")
arqResultado:write(tostring(resultado))


