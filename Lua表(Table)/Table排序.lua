--[[
    Table ����
--]]
-- ����ʵ����ʾ��sort()������ʹ�ã����ڶ�Table��������
-- ʵ����
print("--------------------------")
fruits = {"banana","orange","apple","grapes"}
print("����ǰ")
for k, v in ipairs(fruits) do
    print(k,v)
end

table.sort(fruits)
print("�����")
for k, v in ipairs(fruits) do
    print(k,v)
end
print("--------------------------")

--[[
    Table�Զ�������
--]]
-- ʵ��1��
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

-- ʵ��2��
-- �����Զ�����������ǣ���������Ǵ�������a,b������return trueʱ����a����bǰ�������෴
print("--------------------------")
local a={2,3,5,52,6,74,4}
table.sort(a, function(a, b) return a>b end)
for k,v in ipairs(a) do print(k,v) end
print("--------------------------")