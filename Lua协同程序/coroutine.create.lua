-- ·coroutine.create方法只要建立一个协程，那么这个协程的状态默认就是suspend。使用resum方法启动后，会变成running状态；遇到yield时将状态设为suspend；如果遇到return，那么将协程的状态改为dead。
-- ·coroutine.resume()方法需要特别注意一点就是，这个方法只要调用就返回一个boolean值。
-- ·coroutine.resume()方法如果调用成功，那么返回true;如果有yield方法，同时返回yield括号里的参数；
-- 如果没有yield,那么继续运行知道协程结束；知道遇到return，将协程的状态改为dead，并同事返回return的值。
-- ·coroutine.resume()方法如果调用失败（调用状态为dead的协程会导致失败），那么返回false，并且带上一句"cannot resume dead coroutine"
function yieldReturn(arg)
    return arg
end
co_yieldtest=coroutine.create(
    function()
        print("启动协程状态："..coroutine.status(co_yieldtest))
        print("--")
        coroutine.yield()
        coroutine.yield(1)
        coroutine.yield(print("第三次调用"))
        coroutine.yield(yieldReturn("第四次调用"))
        return 2
    end
)
print("启动前协程状态"..coroutine.status(co_yieldtest))
print("-----------------------")
for i = 1, 6 do
    print("第"..i.."次调用协程",coroutine.resume(co_yieldtest))
    print("当前协程状态"..coroutine.status(co_yieldtest))
    print("-----------------------")
end