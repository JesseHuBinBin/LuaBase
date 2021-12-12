--[[
    Table泛型元素去重
--]]
-- table泛型元素去重，只要元素支持==比较。
-- 要写成完全的泛型，那么v==a[i]改成一个比较函数的指针equal(v,a[i]):
function removeRepeated(a)
    for k, v in pairs(a) do
        for i = k + 1, #a do
            if v == a[i] then
                table.remove(a, i)
            end
        end
    end
end
local a = {"a", "d", "c", "g", "d", "w", "c", "a", "g", "s"}
removeRepeated(a)
table.sort(a)
for k, v in pairs(a) do
    print(k, v)
end
