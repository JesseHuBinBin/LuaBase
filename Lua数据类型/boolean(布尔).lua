--[[
    boolean��������
--]]
-- boolean ����ֻ��������ѡֵ��true���棩 �� false���٣���Lua �� false �� nil ������ false�������Ķ�Ϊ true������ 0 Ҳ�� true:
print(type(true))
print(type(false))
print(type(nil))
print(type(true))
print(type(false))
print(type(nil))

if false or nil then
    print("������һ���� true")
else
    print("false �� nil ��Ϊ false")
end

if 0 then
    print("���� 0 �� true")
else
    print("���� 0 Ϊ false")
end
