--[[
    nil���գ�
--]]
-- nil ���ͱ�ʾһ��û���κ���Чֵ����ֻ��һ��ֵ -- nil�������ӡһ��û�и�ֵ�ı�����������һ�� nil ֵ��
print(type(a))

-- ����ȫ�ֱ����� table��nil ����һ��"ɾ��"���ã���ȫ�ֱ������� table ����ı�����һ�� nil ֵ����ͬ�ڰ�����ɾ����ִ����������֪��
tab1 = {key1 = "val1", key2 = "val2", val3}
for index, value in pairs(tab1) do
    print(index .. "-" .. value)
end
tab1.key1 = nil
for index, value in pairs(tab1) do
    print(index .. "-" .. value)
end

-- nil ���Ƚ�ʱӦ�ü���˫���� "��
print(type(x))
print(type(x) == nil)
print(type(x) == "nil")
