--[[
    这一部分我们通过一个简单的例子介绍如何使用metamethods。
    嘉定我们使用table来描述结合，使用函数来描述集合的并操作，交集操作，like操作。
    我们在一个表内定义这些函数，然后使用构造函数创建一个合集：
--]]
Set = {}
Set.mt = {} --将所有集合共享一个metatable
function Set.new(t)
    local set = {}
    setmetatable(set, Set.mt)
    for _, l in ipairs(t) do
        set[l] = true
    end
    return set
end
function Set.union(a, b) --并集
    local res = Set.new {} --注意这里是大括号
    for i in pairs(a) do
        res[i] = true
    end
    for i in pairs(b) do
        res[i] = true
    end
    return res
end
function Set.intersection(a, b) --交集
    local res = Set.new {} --注意这里是大括号
    for i in pairs(a) do
        res[i] = b[i]
    end
    return res
end
function Set.tostring(set) --打印函数输出结果的调用函数
    local s = "{"
    local sep = ""
    for i in pairs(set) do
        s = s .. sep .. i
        sep = ","
    end
    return s .. "}"
end
function Set.print(set) --打印函数输出结果
    print(Set.tostring(set))
end
--[[
    Lua中定义的常用Metamethod如下所示：
--]]
-- 算术运算符的Metamethod:__add(加运算),__mul(乘),__sun(减),__div(除),__unm(负),__pow(幂),_concat(定义连行为)
-- 关系运算符的Metamethod:__eq(等于),__lt(小于),__le(小于等于),其他的关系运算自动转换为这三个基本运算。
-- 库定义的Metamethod:__tostring(tostring函数的行为),__metatable(对表getmetatable和setmetatable的行为)。

Set.mt.__add = Set.union
s1 = Set.new {1, 2}
s2 = Set.new {3, 4}
print(getmetatable(s1))
print(getmetatable(s2))
s3 = s1 + s2
Set.print(s3)
Set.mt.__mul = Set.intersection --使用相乘运算符来定义集合的交集操作
Set.print((s1 + s2) * s1)
--[[
    如上所示,用表进行了集合的交集和并集操作。
    Lua选择Metamethod的原则：如果第一个参数存在带有__add域的metatable，Lua使用它作为metamethod，和第二个参数无关。
    否则第二个参数存在带有__add域的metatable，Lua使用它作为metamethod否则报错。
--]]
--[[ 差集1 ]]
function Set.diff(a, b)
    local res = Set.new {}
    local unionRes = a + b
    local intersectionRes = a * b
    for i in pairs(unionRes) do
        if (intersectionRes[i] == nil) then
            res[i] = unionRes[i]
        end
    end
    return res
end
--[[ 差集2 ]]
function Set.sub(a, b)
    local res = Set.new {}
    for k, v in pairs(a) do
        if (b[k] == nil) then
            res[k] = true
        end
    end
    return res
end
