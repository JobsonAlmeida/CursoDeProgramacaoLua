
v = {1,2,3}

function maior(v)
    m  = v[1]
    for i = 2, #v do   
        local a = i 
        if v[i] > m then
            m = v[i]
        end
    end
    return m
end


m = maior{1,2,3}

print(m)