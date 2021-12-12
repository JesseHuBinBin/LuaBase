-- table是Lua的一种数据结构用来帮助我们创建不同的数据类型，如：数组，字典等。
-- Lua table使用关联型数组，你可以用任意类型的值来做数组的索引，但这个值不能是nil。
-- Lua table不是固定大小的，你可以根据自己需求进行扩容。
-- Lua也是通过table来解决模块(moudle),包(package)和对象(Object)的。例如string.format表示使用"format"来索引table string

--[[
    table(表)的构造
--]]
-- 构造器是创建和初始化表的表达式。表是Lua特有的强大功能的东西。最简单的构造函数是{}，用来创建一个空表。可以直接初始化数组：
-- 初始化表
mytable={}
-- 指定值
mytable[1]="Lua"
-- 移除引用
mytable=nil--Lua垃圾回收会释放内存
-- 当我们为table a设置元素，然后将a值赋给b，则a与b都指向同一个内存。
-- 如果a设置为nil，则b同样能访问table的元素。如果没有指定的变量指向a，lua的垃圾回收机制会清理相对应的内存。
-- 实例
-- 简单的table
mytable = {}
print("mytable的类型是：",type(mytable))
mytable[1]="Lua"
mytable["wow"]="修改前"
print("mytable索引为1的元素是",mytable[1])
print("mytable索引为wow元素是",mytable["wow"])

-- alternatetable和mytable的是指同一个table
alternatetable=mytable
print("alternatetable索引为1的元素是",alternatetable[1])
print("alternatetables索引为wow的元素是",alternatetable["wow"])

alternatetable["wow"]="修改后"
print("mytable索引为1的元素是",mytable["wow"])

-- 释放变量
alternatetable=nil
print("alternatetable 是",alternatetable)

-- mytable仍然可以访问
print("mytable索引为wow的元素是",mytable["wow"])

mytable=nil
print("mytable是",mytable)