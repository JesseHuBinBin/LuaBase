--[[
    Table 排序
--]]
-- 以下实例演示了sort()方法的使用，用于对Table进行排序：
-- 实例：
print("--------------------------")
fruits = {"banana","orange","apple","grapes"}
print("排序前")
for k, v in ipairs(fruits) do
    print(k,v)
end

table.sort(fruits)
print("排序后")
for k, v in ipairs(fruits) do
    print(k,v)
end
print("--------------------------")

--[[
    Table自定义排序
--]]
-- 实例1：
print("--------------------------")
t =
{
    [1] = {A = 5, B = 2},
    [2] = {A = 1, B = 3},
    [3] = {A = 3, B = 6},
    [4] = {A = 7, B = 1},
    [5] = {A = 2, B = 9},
}
table.sort(t, function(a, b) return a.A > b.A; end)
for k, v in ipairs(t) do
    print(k,v)
end
print("--------------------------")

-- 实例2：
-- 排序自定义排序规则是，答题跪着是传参数（a,b），当return true时，则a排在b前，否则相反
print("--------------------------")
local a={2,3,5,52,6,74,4}
table.sort(a, function(a, b) return a>b end)
for k,v in ipairs(a) do print(k,v) end
print("--------------------------")