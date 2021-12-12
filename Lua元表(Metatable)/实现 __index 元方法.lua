text = {}
text.defaultValue = {size = 14, content = "hello"}
text.mt = {} -- 创建元表

function text.new(a)
    setmetatable(a, text.mt)
    return a
end

text.mt.__index = function(tb, key)
    return text.defaultValue[key]
end

local x = text.new {content = "byte"}
print(x.size)
