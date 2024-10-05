a = 10
b = 2
c = 5
maior = nil

if a > b then
    if(a > c) then
        maior  = a
        print("a eh maior")
    else
        maior = c     
        print("c eh maior")
    end
else
    if b > c then
        maior = b
        print("b eh maior")
    else
        maior = c
        print("c eh maior")        
    end
    
end

print(maior)


---
--[[
a = 0
b = 2
c = 5
maior = a

if b > maior then
    maior = b

end 

if c > maior then
    maior = c

end


print(maior)

]]

v = { 2, 10, 5 , 6 , 20 , 15, 7, 100}

maior  = v[1]

for i = 2, #v do    
    if v[i] > maior then
        maior = v[i]
    end    
end

print(maior)

