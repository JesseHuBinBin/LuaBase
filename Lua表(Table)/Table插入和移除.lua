--[[
    Table ������Ƴ�
--]]
-- ����ʵ����ʾ��table�Ĳ�����Ƴ��Ĳ���

fruits  = {"banana","orange","apple"}

-- ��ĩβ����
table.insert(fruits ,"mango")
print("����Ϊ4��Ԫ��Ϊ",fruits [4])

-- ������Ϊ2�ļ�������
table.insert(fruits ,2,"grapes")
print("����Ϊ2��Ԫ��Ϊ",fruits [2])

print("���һ��Ԫ��Ϊ",fruits [5])
table.remove(fruits)
print("�Ƴ����һ��Ԫ��",fruits[5])
