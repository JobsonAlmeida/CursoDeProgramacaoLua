a = 10 
b = 22

print(a+b)
print(a-b)
print(a^2)
print(a<b)
print(a>b)
print("a"=="a")
print("abacate" < "abacaxi")
print("abacate" > "abacaxi")
print({}=={})
tab1 = {}
tab2 = tab1
print(tab1 == tab2)

print("-----------")
a = true
b = false

print(10 and 20) -- expresão lógica com and -> executa até o fim e retorno o último valor ou até encontrar o primeiro valor avaliado como false
print(10 or 20) -- expressão lógica com or -> até o fim e retorna o último valor ou até encontrar o primeiro valor avaliado como true


s1 = "Hoje"
s2 = "domingo"

print(s1..s2)
s3 = s1..s2
print(s3)
print(#s3)
print(s1.len(s3))
print(s3.len(s3))
