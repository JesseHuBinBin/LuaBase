--[[
    Table ����
--]]
-- ���ǿ���ʹ��concat()���һ���б���Ԫ�����ӳɵ��ַ�����
-- ʵ��
fruit = {"banana","orange","apple"}

-- ����table���Ӻ���ַ���
print("���Ӻ���ַ���",table.concat(fruit))

-- ָ�������ַ�
print("ָ�������ַ�����ַ���",table.concat(fruit,","))

-- ָ������������table
print("ָ���������Ӻ���ַ���",table.concat(fruit,",",2,3))