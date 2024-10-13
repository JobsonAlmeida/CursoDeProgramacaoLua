
local function capitalize(str)

    return ( str:gsub("(%a)([%w_]*)", function (first, rest)
        return first:upper()..rest:lower()
    end) )

end

return capitalize