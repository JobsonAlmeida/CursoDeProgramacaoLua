-- for i=1, 10 do
--     print(i)
-- end

-- for k, v in ipairs({10,20, 30}) do
--     print(k,v)
-- end

-- pair = {
--     x = 1,
--     y = 2
-- }

-- -- a função pair é mais geral. Ela paga indices não numéricos. Ela não garante ordem dos elementos devolvidos
-- for k, v in pairs(pair) do 
--     print(k,v)
-- end


-- function newCounter(first)
--     local i = first
--     local function count()
--         local ret = i
--         i = i+1
--         return ret
--     end

--     return count

-- end

-- c = newCounter(1)

-- print(c())
-- print(c())
-- print(c())
-- print(c())


local function gerador_iterador(max)
    local contador = 0
    return function()
        contador = contador + 1
        if contador <= max then
            return contador
        else
            return nil
        end
    end
     
end

for v in gerador_iterador(10) do
    print(v)
end