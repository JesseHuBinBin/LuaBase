--[[
    Table 连接
--]]
-- 我们可以使用concat()输出一个列表中元素连接成的字符串：
-- 实例
fruit = {"banana","orange","apple"}

-- 返回table连接后的字符串
print("连接后的字符串",table.concat(fruit))

-- 指定连接字符
print("指定连接字符后的字符串",table.concat(fruit,","))

-- 指定索引来连接table
print("指定索引连接后的字符串",table.concat(fruit,",",2,3))