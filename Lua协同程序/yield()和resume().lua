--[[ 这一章的例子较难理解，如果把yield()和resume()两个函数的行为描述清楚了，就好理解多了。 ]]
-- 例子再简化一下：
co = coroutine.create(function (a)
    local r = coroutine.yield(a+1)  --yield()返回a+1给调用它的resume()函数，即2
    print("r="..r)                  --r的值是第二次resume()传进来的,100
end)
status,r=coroutine.resume(co,1)     --resume()返回两个值，一个是自身的状态true，一个是yield的返回值2
coroutine.resume(co,100)            --resume()返回true