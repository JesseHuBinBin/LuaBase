-- 在Lua Table 中我们可以访问对应的key来得到value值，但是缺无法对两个table进行操作（比如相加）。
-- 因此Lua提供了元表（Metatable），允许我们改变table的行为，每个行为关联了对应的元方法。
-- 例如，使用元表我们可以定义Lua如何计算两个tabele的相加操作a+b
-- 当Lua试图对两个表进行相机时，先检查两者之一是否有元表，之后检查是否有一个交_add的字段，弱找到，则调用对应的值。_add等即时字段，其对应的值（往往是一个函数或是table），就是元方法。
-- 有两个很重要的函数来处理元表：
-- setmetatable(table,metatable):对指定table设置元表（metatable），如果元表（metatable）中存在_metatable键值，setmetatable会失败。
-- getmetatable(table):返回对象的元表（metatable）。
-- mytable={}                                   --普通表
-- mymetatable={}                               --元表
-- setmetatable(mytable,mymetatable)            --把mymetatable设为mytable的元表
-- 以上代码也可以直接写成一行：
-- mytable = setmetatable({},{})
-- 以下返回对象元表：
-- getmetatable(mytable)--这会返回mymetatable

--[[
    __index元方法
--]]
-- 当你通过键来访问table的时候，如果这个键没有值，那么Lua就会寻找该table的metatable(嘉定有metatable)中的__index键。如果__index包含一个表格，Lua会在表格中查找相应的键。
-- 我们可以在使用lua命令进入交互模式查看：
other = {foo = 3}
t = setmetatable({}, {__index = other})
print(t.foo)
print(t.bar)
-- 如果__index包含一个函数的话，Lua就会调用这个那个函数，table和键会作为参数传递给函数。
-- __index元方法查看表中元素是否存在，如果不存在，返回结果为nil；如果存在则由_index返回结果.
mytable =
    setmetatable(
    {key1 = "value1"},
    {
        __index = function(mytable, key)
            if key == "key2" then
                return "metatablevalye"
            else
                return nil
            end
        end
    }
)
print(mytable.key1, mytable.key2)
-- 实例解析：
-- mytable 表赋值为{key1="value1"}
-- mytable 设置了元表，元方法为__index。
-- 在mytable表中查找key1，如果找到，返回该元素，找不到则继续。
-- 在mytable表中查找key2，如果找到，返回metatablevalue，找不到则继续。
-- 判断元表有没有__index方法，如果__index方法是一个函数，则调用该函数。
-- 元方法中查看是否传入"key2"键的参数（mytable.key2已设置），如果传入"key2"参数返回"metatablevalue"，否则返回mytable对应的键值。
-- 我们可以将以上的代码简单写成：
mytable = setmetatable({key1 = "value1"}, {__index = {key2 = "metatablevalue"}})
print(mytable.key1, mytable.key2)

-- 总结
-- Lua查找一个表元素时的规则，其实就是如下3个步骤：
-- ·在表中查找，如果找到，返回该元素，找不到则继续。
-- ·判断该表是否有元表，如果没有元表，返回nil，有元表则继续。
-- ·判断元表有没有__index方法，如果__index方法为nil，则返回nil；如果__index方法是一个表，则重复1,2,3，=如果__index方法是一个函数，则返回该函数的返回值。
