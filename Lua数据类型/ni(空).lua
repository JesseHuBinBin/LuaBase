--[[
    nil（空）
--]]
-- nil 类型表示一种没有任何有效值，它只有一个值 -- nil，例如打印一个没有赋值的变量，便会输出一个 nil 值：
print(type(a))

-- 对于全局变量和 table，nil 还有一个"删除"作用，给全局变量或者 table 表里的变量赋一个 nil 值，等同于把它们删掉，执行下面代码就知：
tab1 = {key1 = "val1", key2 = "val2", val3}
for index, value in pairs(tab1) do
    print(index .. "-" .. value)
end
tab1.key1 = nil
for index, value in pairs(tab1) do
    print(index .. "-" .. value)
end

-- nil 作比较时应该加上双引号 "：
print(type(x))
print(type(x) == nil)
print(type(x) == "nil")
