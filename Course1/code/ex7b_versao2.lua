nomeArquivoMoedas = "moedas.csv"
arqMoedas= io.open(nomeArquivoMoedas, "r") -- Corrigido para modo de leitura
conteudo = arqMoedas:read("*a")
arqMoedas:close() -- Fechar o arquivo após leitura

posQuebra, fimQuebra = string.find(conteudo, "\n")
cabecalho = string.sub(conteudo, 1, posQuebra-1)

resultado = ""

while posQuebra ~= nil do
    local iniLinha = fimQuebra + 1
    posQuebra, fimQuebra = string.find(conteudo, "\n", iniLinha)

    -- Verifica se encontrou o final da linha
    if posQuebra then
        local fimLinha = posQuebra - 1
        linha = string.sub(conteudo, iniLinha, fimLinha)

        local nomeMoeda, simbolo, pais, primeiraLetra = string.match(linha, ";(.-)%s*;(.-)%s*;%d+;([^;]-)%s*;(%a)")

        -- Verifica se houve correspondência no match
        if nomeMoeda then
            resultado  = resultado.."Nome: "..nomeMoeda.."\n"
            resultado = resultado.."Simbolo: "..simbolo.."\n"
            resultado = resultado.."Pais: ".. pais.."\n"
            resultado = resultado.."Primeira Letra: "..primeiraLetra.."\n"
            resultado = resultado.."\n"
        end
    end
end

-- Trabalhando com capturas. As capturas podem ser utilizadas com o %numero
nomeArquivoResultado = string.gsub(nomeArquivoMoedas, "(%w+)%.(%w+)$", "_%1_.%2.txt")
arqResultado = io.open(nomeArquivoResultado, "w")
arqResultado:write(resultado)
arqResultado:close() -- Fecha o arquivo de saída