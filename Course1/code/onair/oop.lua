class_mt = {}

--Constructor
function class_mt.__call(cls, ...)
    local obj = setmetatable({}, cls) 
    if cls.init ~= nil then
        cls.init(obj, ...)        
    end
    
    return obj    
end

function class()
    local class_tb = setmetatable({}, class_mt)
    class_tb.__index = class_tb
    return class_tb
end
