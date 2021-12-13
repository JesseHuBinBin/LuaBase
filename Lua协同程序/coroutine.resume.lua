--[[ coroutine.resume()方法需要特别注意的一点就是，这个方法只需要调用就会返回一个boolean值。 ]]
-- coroutine.resume()方法如果调用成功，那么返回true，如果有yield方法，同时返回yield括号里的参数；如果失败，那么返回false，并且带上一句"cannot resume deal coroutine"
co_yieldtest =
    coroutine.create(
    function()
        coroutine.yield()
        coroutine.yield(1)
        return 2
    end
)
for i = 1, 4 do
    print("第"..i.."次调用协程：",coroutine.resume(co_yieldtest))
end