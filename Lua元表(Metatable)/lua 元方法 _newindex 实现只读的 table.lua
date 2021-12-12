--[[
    Lua Ԫ���� _newindex ʵ��ֻ���� table
--]]
--[[
    ����__newindex����һ�����ԣ�������������һ��table��ֵ���µĲ����������һ��ֻ����table������ͨ��
    __newindex��ʵ��������kua��__newindex�ĵ��û��Ƹ�__index�ĵ��û�����һ���ģ�����λtable��һ��
    �����ڵ�key�������丳ֵ��ʱ��Lua�����������__newindexԪ������������ڣ����ø÷�������������ڣ�
    ֱ�Ӷ�ԭtable�������и�ֵ������
--]]
local t = {}
local prototype = {}
local mt = {
    __index = function(t, k)
        return prototype[k]
    end,
    __newindex = function(t, k, v)
        print("attempt to update a table k-v")
        prototype[k] = v
    end
}
setmetatable(t, mt)
t[2] = "hello"
print(t[2])

--[[ ����__newindex����һ���ԣ�������������һ��table��ֵ���µĲ�����
�����һ��ֻ����table������ͨ��__newindex��ʵ��������룺 ]]
function readOnly(t)
    local proxy = {} -- ����һ���ձ������κ��������ǲ����ڵģ����Ի����__index��__newindex
    local mt = {
        __index = t,  --__index�����Ǻ�����Ҳ������table����table�Ļ�������ֱ�ӷ���table�ķ���ֵ
        __newindex =function (t,k,v)
            error("attempt to update a read-only table",2)
        end
    }
    setmetatable(proxy,mt)
    return proxy
end
days = readOnly{"Sunday","Monday","Tuesday","Wednessday","Thursday","Friday","Saturday"}
print(days[1])
-- days[2]="hello"  --��һ�о��ǷǷ�������


