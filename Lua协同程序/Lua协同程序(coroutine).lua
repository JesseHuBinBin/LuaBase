--[[
    Lua协同程序（coroutine）
--]]
-- 什么是协同程序？
-- Lua协同程序（coroutine）与线程比较类似：拥有独立的堆栈，独立的局部变量，独立的指针指令，同时又与其它协同程序共享全局变量和其它大部分东西。
-- 协同是非常强大的功能，但是用起来也很复杂。

--[[ 线程和协同程序区别 ]]
-- 线程和协同程序主要区别在于，一个具有多个线程可以同时运行几个线程，而协同程序缺需要彼此协作的运行。
-- 在任一指定时刻只有一个协同程序在运行，并且这个正在运行的协同程序只有明确的呗要求挂起的时候才会被挂起。
-- 协同程序有点类似同步的多线程，在等待同一个线程锁的几个线程有点类似协同。

--[[ 基本语法 ]]
-- 方法                           描述
-- coroutine.create()                创建coroutine，返回coroutine，参数是一个函数，当和resume配合使用的时候就唤醒函数调用
-- coroutine.resume()                重启coroutine，和create配合使用
-- coroutine.yield()                 挂起coroutine，将coroutine设置为挂起状态，这个和resume配合使用能有很多有用的效果
-- coroutine.status()                查看coroutine状态，coroutine的状态有三种：dead，suspended，running，具体什么时候哟组合杨的状态
-- coroutine.wrap()                  创建coroutine，返回一个函数，一旦机调用这个函数，就进入coroutine，和create功能重复
-- coroutine.running()               返回正在跑的coroutine，一个coroutine就是一个线程，当使用running的时候，就是返回一个coroutine的线程号

-- 以下实例演示了以上各个方法的用法：
co =
    coroutine.create(
    function(i)
        print(i)
    end
)
coroutine.resume(co, 1) --1
print(coroutine.status(co)) --dead

print("------------------")

co=coroutine.wrap(
    function(i)
        print(i)
    end
)
co(1)

print("------------------")

co2 =
    coroutine.create(
    function()
        for i = 1, 10 do
            print(i)
            if i == 3 then
                print(coroutine.status(co2)) --running
                print(coroutine.running()) --thread:XXXX
            end
            coroutine.yield()
        end
    end
)
coroutine.resume(co2) --1
coroutine.resume(co2) --2
coroutine.resume(co2) --3

print(coroutine.status(co2))  --suspended
print(coroutine.running())

print("---------")

-- coroutine.running就可以看出来，coroutine在底层实现就是一个线程。
-- 当create一个coroutine的时候就是在新线程中注册了一个事件。
-- 当使用resume触发事件的时候，create的coroutine函数就被执行了，当遇到yield的时候就代表挂起当前线程，等候再次resume触发事件。

