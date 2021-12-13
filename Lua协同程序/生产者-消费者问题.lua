--[[
    生产者-消费者问题
--]]
-- 现在我就使用Lua的协同程序来完成生产者-消费者浙一经典问题。
local newProductor
function productor()
    local i=0
    while true do
        i=i+1
        send(i)  --将生产的物品发送给消费者
    end
end

function consumer()
    while true do
        local i=received()  --从生产者那里得到物品
        print(i)
    end
end

function received()
    local status,value=coroutine.resume(newProductor)
    return value
end

function send(x)
    coroutine.yield(x)  --x表示需要发送的值，值返回以后，就挂起该协同程序
end

newProductor=coroutine.create(productor)
consumer()
