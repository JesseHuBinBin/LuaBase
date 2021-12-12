--[[
    多返回值
--]]
-- Lua函数可以返回多个结果值，比如string.find，其返回匹配串"开始和结束的下标"（如果不存在匹配串返回nil）。
s, e = string.find("www.runoob.com", "runoob")
print(s, e)

-- Lua函数中，在return后列出要返回的值的列表即可返回多值，如：
function maximum(a)
    local mi = 1 -- 最大值索引
    local m = a[mi] -- 最大值
    for i, val in ipairs(a) do
        if val > m then
            mi = i
            m = val
        end
    end
    return m, mi
end
print(maximum({8, 10, 23, 12, 5}))
