--[[ table���� ]]
-- �� Lua �table �Ĵ�����ͨ��"������ʽ"����ɣ���򵥹�����ʽ��{}����������һ���ձ�Ҳ�����ڱ������һЩ���ݣ�ֱ�ӳ�ʼ����:

-- ����һ���յ� table
local tbl1 = {}

-- ֱ�ӳ�ʼ��
local tbl2 = {"apple", "pear", "orange", "grape"}

-- Lua �еı�table����ʵ��һ��"��������"��associative arrays����������������������ֻ������ַ�����
a = {}
a["key"] = "value"
key = 10
a[key] = 22
a[key] = a[key] + 11
for k, v in pairs(a) do
    print(k .. " : " .. v)
end

-- ��ͬ���������Ե������ 0 ��Ϊ����ĳ�ʼ�������� Lua ����Ĭ�ϳ�ʼ����һ���� 1 ��ʼ��
local tbl = {"apple", "pear", "orange", "grape"}
for key, val in pairs(tbl) do
    print("Key", key)
end
