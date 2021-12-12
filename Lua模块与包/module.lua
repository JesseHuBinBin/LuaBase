--[[
    Lua 模块与包
--]]
-- 模块类类似一个封装库，从Lua5.1开始，Lua加入了标准的模块管理机制，可以把一下公用的代码放在一个文件里，以API接口的形式在其他地方调用，有利于代码的重复利用和降低代码的耦合度。
-- Lua的模块是由变量，函数等已知元素组成的table，因此创建一个模块很简单，就是创建一个table，然后把需要导出的常量，函数放入其中最后返回这个table就行。

-- 文件名为 module.lua
-- 定义一个名为 module 的模块
module = {}

-- 定义一个常量
module.constant = "这是一个常量"

-- 定义一个函数
function module.func1()
    io.write("这是一个公有函数！\n")
end

local function func2()
    print("这是一个私有函数！")
end

function module.func3()
    func2()
end

return module
-- 由上可知，模块的结构就是一个table的结构，因此可以像操作调用table里的元素那样来操作调用模块的常量或函数。
-- 上面的func2声明为程序块的局部变量，即表示一个私有函数，因此是不能从外部访问模块里的私有函数，必须通过模块里的共有函数来调用。
