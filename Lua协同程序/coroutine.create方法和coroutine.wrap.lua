--[[ coroutine.create()方法和continue.wrap需要特别注意的是这个返回值的类型，功能上有些类似，但是并不完全一样。]]
-- coroutine.create()返回的是一个协同程序，类型为thread，需要使用coroutine.resume进行调用；而coroutine.wrap返回的是一个普通的方法（函数），类型为function，和普通function有同样的使用方法 ，并且不能使用coroutine.resume调用
co_create =
    coroutine.create(
    function()
        print("co_create类型是" .. type(co_create))
    end
)
co_wrap =
    coroutine.wrap(
    function()
        print("co_wrap类型是"..type(co_wrap))
    end
)
coroutine.resume(co_create)
co_wrap()