--[[
    __newindex 元方法
--]]
-- __newindex 元方法用来对表更新，__index则用来对表访问。
-- 当你给表的一个缺少的索引赋值，解释器就会查找__newindex元方法：如果存在则调用这个函数而不进行赋值操作。
-- 以下实例演示了__newindex元方法的应用：
mymetatable = {}
mytable = setmetatable({key1 = "value1"}, {__newindex = mymetatable})
print(mytable.key1)
mytable.newkey = "新值2"
print(mytable.newkey, mymetatable.newkey)
mytable.key1 = "新值1"
print(mytable.key1, mymetatable.key1)
-- 以上实例中表设置了元方法__newindex,在对新索引键（newkey）赋值（mytable.newkey="新值2"），会调用元方法，
-- 而不进行赋值。而如果对已存的索引键（key1），则会进行赋值，而不调用元法__newindex
-- 以下实例使用了rawset函数来更新表：
-- 实例：
mytable =
    setmetatable(
    {key1 = "value1"},
    {
        __newindex = function(mytable, key, value)
            rawset(mytable, key, '"' .. value .. '"')
        end
    }
)
mytable.key1 = "new value"
mytable.key2 = 4
print(mytable.key1, mytable.key2)

--[[
    __newindex有两个原则
--]]
-- 1.如果__newindex是一个函数，则在给table中不存在的字段赋值时，会调用这个函数，并且赋值不成功。
-- 2.如果__newindex是一个table，则在给table中不存咋的字段赋值时，会直接给__newindex的table赋值。