--[[
    一维数组
--]]
-- 一维数组是最简单的数组，其逻辑结构是线性表。一维数组可以用for循环出数组的中的元素，如下：
array = {"Lua", "Tutorial"}
for i = 0, 2 do
    print(arry[i])
end
-- 我们可以使用整数索引来访问数组元素，如果知道的索引没有值则返回nil。
-- 在Lua索引值是以1为起始。但你也可以指定0开始。
-- 除此之外我们还可以以负数为数组索引值：
arry = {}
for i = -2, 2 do
    arry[i] = i * 2
end
for i = -2, 2 do
    print(arry[i])
end
