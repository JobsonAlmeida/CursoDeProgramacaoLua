
-- -- s = "Curso de Lua"

-- -- --Lembrar que em lua a função pode retornar múltiplos valores
-- -- ini, fim = string.find(s, "%w")

-- -- print(string.sub(s, ini, fim))

-- nomeArquivoMoedas = "moedas.csv"
-- arqMoedas= io.open(nomeArquivoMoedas)
-- conteudo = arqMoedas:read("*a")

-- --linha de cabecalho
-- posQuebra, fimQuebra = string.find(conteudo, "\n") -- string.find -> nós fornecemos a string e a função nos retorna os índices de início e fim
-- cabecalho = string.sub(conteudo, 1, posQuebra-1) -- string.sub -> nós fornecesmo is índices e a função nos retorna a string 

-- --primeira linha
-- iniLinha = fimQuebra + 1
-- posQuebra, fimQuebra = string.find(conteudo, "\n", iniLinha)
-- fimLinha = posQuebra-1
-- linha1 = string.sub(conteudo, iniLinha, fimLinha)
-- print(linha1)

-- -- Nome da Moeda
-- -- Simbolo
-- -- Nome do País
-- -- "Código,Nome,Símbolo,Cód. País,País,Tipo,Data Exclusão Ptax"
-- -- "005,AFEGANE AFEGANIST,AFN,00132,AFEGANISTAO,A, "


-- ini, fim = string.find(linha1, ",[%w ]+,")
-- nomeMoeda = string.sub(linha1, ini, fim)
-- nomeMoeda = string.sub(nomeMoeda, 2, -2) -- remember: if you want to find a string pattern into a string and you have the indexes you can always use the sub method 
-- print(nomeMoeda)

-- ini, fim, nomeMoeda, simbolo, pais, primeiraLetra = string.find(linha1, ",([%w ]+),(.-) *,%d-,((%a).-) *,")
-- print("Nome:"..nomeMoeda)
-- print("Simbolo:"..simbolo)
-- print("Pais:"..pais)
-- print("Primeira Letra:"..primeiraLetra)

-- print("-----------------")


-- --primeira linha
-- iniLinha = fimQuebra + 1
-- posQuebra, fimQuebra = string.find(conteudo, "\n", iniLinha)
-- fimLinha = posQuebra-1
-- linha1 = string.sub(conteudo, iniLinha, fimLinha)
-- print(linha1)

-- --proxima linha
-- iniLinha = fimQuebra + 1
-- posQuebra, fimQuebra = string.find(conteudo, "\n", iniLinha)
-- fimLinha = posQuebra-1
-- linha1 = string.sub(conteudo, iniLinha, fimLinha)
-- print(linha1)

-- -- Nome da Moeda
-- -- Simbolo
-- -- Nome do País
-- -- "Código,Nome,Símbolo,Cód. País,País,Tipo,Data Exclusão Ptax"
-- -- "005,AFEGANE AFEGANIST,AFN,00132,AFEGANISTAO,A, "


-- ini, fim = string.find(linha1, ",[%w ]+,")
-- nomeMoeda = string.sub(linha1, ini, fim)
-- nomeMoeda = string.sub(nomeMoeda, 2, -2) -- remember: if you want to find a string pattern into a string and you have the indexes you can always use the sub method 
-- print(nomeMoeda)

-- ini, fim, nomeMoeda, simbolo, pais, primeiraLetra = string.find(linha1, ",(.-) *,(.-) *,%d-,((%a).-) *,")
-- print("Nome:"..nomeMoeda)
-- print("Simbolo:"..simbolo)
-- print("Pais:"..pais)
-- print("Primeira Letra:"..primeiraLetra)


-- -- print(cabecalho)


nomeArquivoMoedas = "moedas.csv"
arqMoedas= io.open(nomeArquivoMoedas, "r")
conteudo = arqMoedas:read("*a")
arqMoedas:close() -- Fechar o arquivo após leitura

posQuebra, fimQuebra = string.find(conteudo, "\n")
cabecalho = string.sub(conteudo, 1, posQuebra-1)

resultado = ""

while posQuebra ~= nil do
    local iniLinha = fimQuebra + 1
    posQuebra, fimQuebra = string.find(conteudo, "\n", iniLinha)
    local fimLinha = posQuebra - 1
    linha = string.sub(conteudo, iniLinha, fimLinha)

    local nomeMoeda, simbolo, pais, primeiraLetra = string.match(linha, ";(.-)%s*;(.-)%s*;%d+;([^;]-)%s*;(%a)")

    if nomeMoeda == nil then
        break
    end

    resultado  = resultado.."Nome: "..nomeMoeda.."\n"
    resultado = resultado.."Simbolo: "..simbolo.."\n"
    resultado = resultado.."Pais: ".. pais.."\n"
    resultado = resultado.."Primeira Letra: "..primeiraLetra.."\n"
    resultado = resultado.."".."\n"

end


--trabalhando com capturas. As capturas podem ser utilizadas com o %numero
nomeArquivoResultado = string.gsub(nomeArquivoMoedas, "(%w+)%.(%w+)$", "_%1_.%2.txt")
arqResultado = io.open(nomeArquivoResultado, "w")
arqResultado:write(resultado)
arqResultado:close()


