--[[
    __tostring 元方法
--]]
-- __tostring元方法用于修改表的输出行为。以下实例我们自定义了表的输出格式：
-- 实例：
mytable = setmetatable({10,20,30},{
    __tostring=function (mytable)
        sum=0
        for k, v in pairs(mytable) do
            sum=sum+v
        end
        return"所有元素的和为"..sum
    end
})
print(mytable)
-- 从本文中我们可以知道元表可以很好简化我们代码功能，所以了解Lua的元表，可以让我们写出更加简单优秀的Lua代码。
