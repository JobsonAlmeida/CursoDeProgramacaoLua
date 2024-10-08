

filename = "teste.txt"
-- local file = io.open(filename, "r")


-- if file == nil then
--     error("Nao foi possivel abrir o arquivo"..filename)
-- end

local status = pcall(io.open, filename, "r")

print(status)
print(conteudo)

if status == false then
    print(conteudo)
    os.exit(1)
end
