--[[
    require ����
--]]
-- Lua�ṩ��һ����Ϊrequire�ĺ�����������ģ�顣Ҫ����һ��ģ�飬ֻ��Ҫ���ĵ��þͿ����ˡ�
-- require("<ģ����>")
-- ����
-- require "<ģ����>"
-- ִ��require��᷵��һ����ģ�鳣�����ߺ�����ɵ�table�����һ��ᶨ��һ��������table��ȫ�ֱ�����

print(package.path)
package.path = "./Luaģ�����/?.lua;" .. package.path
print(package.path)
local m = require("module")
print(m.constant)
m.func3()
