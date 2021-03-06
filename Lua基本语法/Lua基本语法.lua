--[[ Lua 基本语法 ]]
--[[ 交互式编程 ]]
-- Lua提供交互式编程模式。我们可以在命令行输入程序立即查看效果。
-- Lua交互式编程可以通过lua-i或lua来启用：
-- $lua -i
-- $ Lua 5.3.0  Copyright (C) 1994-2015 Lua.org, PUC-Rio
-- #!/usr/local/bin/lua

--[[ 标示符 ]]
-- Lua标示符用于定义一个变量，函数无趣其它用户定义的项。标示符以一个字母A到Z或a到z或下划线_开头后加上0个或多个字母，下划线，数字（0到9）。
-- 最好不要用下划线加大写字母的标示符，因为Lua的保留字也是这样的。
-- Lua不允许使用特殊字符如@,$和%来定义标示符。Lua是一个区分大小写的编程语言。因此在Lua中Runoob与runoob是两个不同的标示符。
-- 以下列出了一些正确的标示符：
-- mohd   zara   abc   move_name   a_123
-- myname50   _temp   j   a23b9   retVal

--[[ 关键字 ]]
-- 以下列出了Lua的保留关键字。保留关键字不能作为常量或变量或其它用户自定义标示符。
-- and          break         do         else
-- else if      end           false      for
-- function     if            in         local
-- nil          not           or         repeat
-- return       then          true       until
-- while        goto

--[[ 全局变量 ]]
-- 在默认情况下，变量总是认为是全局的。
-- 全局变量不需要声明，给一个变量赋值后即创建了这个全局变量，访问一个没有初始化的全局变量也不会出错，只不过得到的结果是：nil。
-- print(b)
-- b=20
-- print(b)
-- 如果想删除一个全局变量，只需要将变量赋值为nil
-- 这样变量b就好像从来没被使用过一样。换句话说，当且仅当一个变量不等于nil时，这个变量即存在。

--[[ 笔记1： ]]
-- 多行注释推荐使用 --[=[注释内容]=]，这样可以避免遇到table[table[idx]]时就将多行注释结束。

--[[ 笔记2 ]]
-- 1.通过命令行的通用终止方式。
-- linux:Ctrl+D(发送退出信号),Ctrl+C(强制中断)
-- 2.输入
-- os.exit(code, close)

--[[ 笔记3 ]]
-- 多行注释加-取消注释中间代码可以继续运行，单行注释没有此功能。
--[[
    print('多行注释')
--]]
---[[
print("取消多行注释")
--]]
