--[[
    require 函数
--]]
-- Lua提供了一个名为require的函数用来加载模块。要加载一个模块，只需要简答的调用就可以了。
-- require("<模块名>")
-- 或者
-- require "<模块名>"
-- 执行require后会返回一个有模块常量或者函数组成的table，并且还会定义一个包含改table的全局变量。

print(package.path)
package.path = "./Lua模块与包/?.lua;" .. package.path
print(package.path)
local m = require("module")
print(m.constant)
m.func3()
