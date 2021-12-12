--[[
    Lua中有8个基本类型分为：nil,boolean,number,string,userdata,funciton,thread和table
    nil：这个最简单，只有只nil属于该类，表示一个无效值（在条件表达式中相当于false）
    boolean：包含两个值，false和ture
    number：表示双精度类型实浮点数
    string：字符串由一串双引号或者单引号表示
    function：由C后者Lua编写的函数
    userdata：表示任意存储在变量中的C数据结构
    thread：表示执行的独立线路，用于执行协同程序
    table：Lua中的表（table）其实是一个“关联数组”（associative arrys），数组索引可以是数字，字符串或者表类型。
           在Lua里，table的创建是通过“构造表达式”来完成的，最简单构造表达式是{}，用来创建一个空表
]]--
-- print(type("Helllo Wordld"))           -->string
-- print(type(10.4*3))                    -->number
-- print(type(print))                     -->function
-- print(type(type))                      -->function
-- print(type(true))                      -->boolean
-- print(type(nil))                       -->nil
-- print(type(type(x)))                   -->string



--[[
    nil（空）
    nil类型表示一种没有任何有效值，它只有一个值--nil，例如打印一个没有赋值的变量，便会输出一个nil值：
]]--
-- print(type(a))
--对于全局变量和table，nil还有一个“删除的作用”，给全局变量或者table表里的变量赋值一个nil值，等同于把它们删除--
-- tab1={key1="val1",key2="val2",val3}
-- for index, value in pairs(tab1) do
--     print(index.."-"..value)
-- end
-- tab1.key1=nil
-- for index, value in pairs(tab1) do
--     print(index.."-"..value)
-- end
--[[nil作比较时应该加上双引号“”]]--
-- print(type(x))
-- print(type(x)==nil)
-- print(type(x)=="nil")string类型 ]]


--[[
    boolean(布尔)
    boolean类型只有两个可选值：true（真）和false（假），Lua把false和nil看作是false，其他的都是false，数字0也是true
]]--
-- print(type(true))
-- print(type(false))
-- print(type(nil))

-- if false or nil then
--     print("至少有一个是 true")
-- else
--     print("false 和 nil 都为 false")
-- end

-- if 0 then
--     print("数字 0 是 true")
-- else
--     print("数字 0 为 false")
-- end


--[[
    number（数字）
    Lua默认只有一种number类型--double（双精度）类型（默认类型可以修改luaconf.h里的定义），以下几种协防都被看做是number类型：
]]--
-- print(type(2))
-- print(type(2.2))
-- print(type(0.2))
-- print(type(2e+1))
-- print(type(0.2e-1))
-- print(type(7.8263692594256e-06))


--[[
    string（字符串）
    字符串是由一对双引号或者单引号来表示
]]--
-- string1="this is string1"
-- string2='this is string2'
--也可以用"[[]]"来表示“一块”字符串
-- 对于一个数字字符串上进行算术操作时，Lua会尝试将这个数字字符串转成一个数字
-- print("2"+6)
-- print("2"+"6")
-- print("2+6")
-- print("-2e2"*"6")
-- print("error"+1)
-- 以上代码中“error+1”执行报错了，字符串连接使用的是..,如
-- print("a".."b")
-- print(157 .. 428)
-- 使用#来计算字符串的长度，放在字符串前面，如下实例：
-- len="www.runoob.com"
-- print(#len)
-- print(#"www.runoob.com")

--[[
    table（表）
    在Lua中，table的创建是通过“构造表达式”来完成的，最简单构造表达式是{}，用来创建一个空表。
    也可以在表里添加一些数据，直接初始化表：
]]--
-- local tab1={} --创建一个空的table
-- local tab2={"apple","pera","orange","grape"} --直接初始表
-- Lua中的表（table）其实是一个“关联数组”（associative arrys）,数组的索引可以是数字或者是字符串。
-- table_test.lua 脚本文件
-- a = {}
-- a["key"] = "value"
-- key = 10
-- a[key] = 22
-- a[key] = a[key] + 11
-- for k, v in pairs(a) do
--     print(k .. " : " .. v)
-- end
-- 不同于其他语言的数组把0作为数组的初始索引，在Lua里表的默认初始索引一般以1开始
--table_test2.lua 脚本文件
-- local tbl={"apple","pear","orange","grape"}
-- for key, value in pairs(tbl) do
--     print("Key",key)
-- end
-- table不会固定长度大小，有新数据添加时table的长度会自动增长，没有初始化table都是nil。
--table_test3.lua 脚本文件
-- a3={}
-- for index = 1, 10 do
--     a3[index]=index
-- end
-- a3["key"]="val"
-- print(a3["key"])
-- print(a3["none"])

--[[
    function(函数)
        在Lua中，函数是被看做是“第一类值（First-Class Value）”，函数可以存在变量里
]]--
--function_test.lua 脚本文件
-- function factorial1(n)
--     if n == 0 then
--         return 1
--     else
--         return n * factorial1(n - 1)
--     end
-- end
-- print(factorial1(5))
-- factorial2 = factorial1
-- print(factorial2(5))
-- function可以一匿名（anonymous function）的方式通过参数传递
--function_test.lua
-- function testFun(tab,fun)
--     for key, value in pairs(tab) do
--         print(fun(key,value))
--     end
-- end
-- tab={key1="val1",key2="val2"}
-- testFun(tab,function (key,val)
--     return key.."="..val
-- end)

--[[
    thread(线程)
    在Lua里，最主要的线程是协同程序（coroutine）。它跟线程
    （thread）差不多，拥有自己独立的栈，局部变量和指令指针，可以跟
    其它协同程序共享全局变量和其它大部分东西。
    线程跟协程的区别：线程可以同时多个运行，而协程任意时刻只能运行一个，
    并且处于运行状态的协程只能被挂起（suspend）时才会暂停
]]--

--[[
    userdata(自动义类型)
    userdata是一种用户自定义数据，用于表示一种由应用程序或C/C++
    语言库锁创建的类型，可以将任意C/C++的任意数据类型的数据（通常
    struct和指针）存储到Lua变量中调用
]]--







