--[[
    Lua 元方法 _newindex 实现只读的 table
--]]
--[[
    根据__newindex的这一个特性，可以用来跟踪一个table赋值更新的操作，如果是一个只读的table，可以通过
    __newindex来实现下面是kua中__newindex的调用机制跟__index的调用机制是一样的，当方位table中一个
    不存在的key，并对其赋值的时候，Lua解释器会查找__newindex元方法，如果存在，调用该方法，如果不存在，
    直接对原table索引进行赋值操作。
--]]
local t = {}
local prototype = {}
local mt = {
    __index = function(t, k)
        return prototype[k]
    end,
    __newindex = function(t, k, v)
        print("attempt to update a table k-v")
        prototype[k] = v
    end
}
setmetatable(t, mt)
t[2] = "hello"
print(t[2])

--[[ 根据__newindex的这一特性，可以用来跟踪一个table赋值更新的操作，
如果是一个只读的table，可以通过__newindex来实现下面代码： ]]
function readOnly(t)
    local proxy = {} -- 定义一个空表，访问任何索引都是不存在的，所以会调用__index和__newindex
    local mt = {
        __index = t,  --__index可以是函数，也可以是table，是table的话，调用直接返回table的返回值
        __newindex =function (t,k,v)
            error("attempt to update a read-only table",2)
        end
    }
    setmetatable(proxy,mt)
    return proxy
end
days = readOnly{"Sunday","Monday","Tuesday","Wednessday","Thursday","Friday","Saturday"}
print(days[1])
-- days[2]="hello"  --这一行就是非法访问了


