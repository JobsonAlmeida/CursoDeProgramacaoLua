local texto = "Pão de queijo"
local texto2 = "Mundo"


print(string.upper(texto))
print(string.lower(texto))

print(string.reverse(texto))
print(texto.reverse(texto2))

print(string.len(texto))
print(#texto)

print(string.find(texto, "Pão"))
print(type(string.find(texto, "Pão")))

print(string.sub(texto, 6,7))

print("--------------")
local inc, fim = string.find(texto, "de")
print(string.sub(texto, inc, fim))
