--[[
    �෵��ֵ
--]]
-- Lua�������Է��ض�����ֵ������string.find���䷵��ƥ�䴮"��ʼ�ͽ������±�"�����������ƥ�䴮����nil����
s, e = string.find("www.runoob.com", "runoob")
print(s, e)

-- Lua�����У���return���г�Ҫ���ص�ֵ���б��ɷ��ض�ֵ���磺
function maximum(a)
    local mi = 1 -- ���ֵ����
    local m = a[mi] -- ���ֵ
    for i, val in ipairs(a) do
        if val > m then
            mi = i
            m = val
        end
    end
    return m, mi
end
print(maximum({8, 10, 23, 12, 5}))
