--[[
    __newindex Ԫ����
--]]
-- __newindex Ԫ���������Ա���£�__index�������Ա���ʡ�
-- ��������һ��ȱ�ٵ�������ֵ���������ͻ����__newindexԪ��������������������������������и�ֵ������
-- ����ʵ����ʾ��__newindexԪ������Ӧ�ã�
mymetatable = {}
mytable = setmetatable({key1 = "value1"}, {__newindex = mymetatable})
print(mytable.key1)
mytable.newkey = "��ֵ2"
print(mytable.newkey, mymetatable.newkey)
mytable.key1 = "��ֵ1"
print(mytable.key1, mymetatable.key1)
-- ����ʵ���б�������Ԫ����__newindex,�ڶ�����������newkey����ֵ��mytable.newkey="��ֵ2"���������Ԫ������
-- �������и�ֵ����������Ѵ����������key1���������и�ֵ����������Ԫ��__newindex
-- ����ʵ��ʹ����rawset���������±�
-- ʵ����
mytable =
    setmetatable(
    {key1 = "value1"},
    {
        __newindex = function(mytable, key, value)
            rawset(mytable, key, '"' .. value .. '"')
        end
    }
)
mytable.key1 = "new value"
mytable.key2 = 4
print(mytable.key1, mytable.key2)

--[[
    __newindex������ԭ��
--]]
-- 1.���__newindex��һ�����������ڸ�table�в����ڵ��ֶθ�ֵʱ�������������������Ҹ�ֵ���ɹ���
-- 2.���__newindex��һ��table�����ڸ�table�в���զ���ֶθ�ֵʱ����ֱ�Ӹ�__newindex��table��ֵ��