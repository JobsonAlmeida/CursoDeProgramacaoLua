
-- io.write("Digite alguma coisa: ")
-- a = io.read()

arq = io.open("teste.txt", "r")
conteudo = arq:read(10)
print("!"..conteudo.."!")

arq.close(arq)

arqSaida = io.open("testeSaida.txt", "w")
arqSaida:write("!"..conteudo.."!")
io.write("Esperando para fechar o arquivo...")
io.read()
arqSaida:close()
io.write("Arquivo fechado. Esperando para sair...")
io.read()



