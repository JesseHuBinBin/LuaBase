--[[
    Table����Ԫ��ȥ��
--]]
-- table����Ԫ��ȥ�أ�ֻҪԪ��֧��==�Ƚϡ�
-- Ҫд����ȫ�ķ��ͣ���ôv==a[i]�ĳ�һ���ȽϺ�����ָ��equal(v,a[i]):
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
