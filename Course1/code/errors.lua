--video link
-- https://www.youtube.com/watch?v=_1kH7uo3OIc

-- function geraError(palavra) 
--     if not palavra then 
--         error("O parametro palavra nao pode ser nulo")   
--     end

--     print("A palavra digitada eh: "..palavra)
    
-- end


function geraError(palavra) 

    assert(palavra, nil)     
    
    print("A palavra digitada eh: "..palavra)
    
end

-- status, error_message = pcall(geraError, "afa")

-- print(status, error_message)

status, error_message = xpcall(geraError, function ()  print("deu erro na funcao protegida") end, nil)

