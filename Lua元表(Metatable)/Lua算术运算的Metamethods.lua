--[[
    这一部分我们通过一个简单的例子介绍如何使用metamethods。
    嘉定我们使用table来描述结合，使用函数来描述集合的并操作，交集操作，like操作。
    我们在一个表内定义这些函数，然后使用构造函数创建一个合集：
--]]
Set={}
Set.mt={}--将所有集合共享一个metatable
function  Set.new(t)
    local set={}
    setmetatable(set, Set.mt)
    for _, l in ipairs(t) do
        set[l]=true
    end
    return set
end

