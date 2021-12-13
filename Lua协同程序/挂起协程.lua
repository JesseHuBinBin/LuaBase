--[[ yield除了挂起协程外，还可以同事返回数据给resume，并且还可以同时定义下一次唤醒时需要传递的参数。 ]]
cor =
    coroutine.create(
    function(a)
        print("参数a值为：", a)
        local b, c = coroutine.yield(a + 1) --这里表示挂起协程，并且将a+1的值进行返回，并且指定下一次唤醒需要b，c两个参数。
        print("参数b,c的值分别为：", b, c)
        return b * c --协程结束，并且返回b*c的值
    end
)
print("第一次调用：", coroutine.resume(cor, 1))
print("第二次调用：", coroutine.resume(cor, 2, 2))
print("第三次调用：", coroutine.resume(cor))
