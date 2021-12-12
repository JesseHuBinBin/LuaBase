--[[
    Table 插入和移除
--]]
-- 以下实例演示了table的插入和移除的操作

fruits  = {"banana","orange","apple"}

-- 在末尾插入
table.insert(fruits ,"mango")
print("索引为4的元素为",fruits [4])

-- 在索引为2的键出插入
table.insert(fruits ,2,"grapes")
print("索引为2的元素为",fruits [2])

print("最后一个元素为",fruits [5])
table.remove(fruits)
print("移除最后一个元素",fruits[5])
