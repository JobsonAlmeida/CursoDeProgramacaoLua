class_mt = {}

--Constructor
function class_mt.__call(cls, ...)
    local obj = setmetatable({}, cls) 
    if cls.init ~= nil then
        cls.init(obj, ...)        
    end
    
    return obj    
end

function class(name)
    local class_tb = setmetatable({}, class_mt)
    if name ~= nil then
        _G[name] = class_tb --faz com o que a variável name seja atribuída à tabela de variáveis do escopo global
    end                     --e com o valor que é referência para a tabela class_tb 
    class_tb.__index = class_tb
    return class_tb
end


-- function newClass(name)
--     local class_tb = setmetatable({}, class_mt)
--     class_tb.__index = class_tb
--     return class_tb
-- end


function newClass(Base)
    Base = Base or class_mt
    Base.__call = class_mt.__call 

    local class_tb = setmetatable({}, Base)
    class_tb.__index = class_tb
    return class_tb
end