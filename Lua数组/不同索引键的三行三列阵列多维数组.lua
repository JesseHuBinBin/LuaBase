--[[
    ��ͬ�������������������ж�ά���飺
--]]
-- ��ʼ������
array = {}
maxRows = 3
maxColumns = 3
for row = 1, maxRows do
    for col = 1, maxColumns do
        array[row * maxColumns + col] = row * col
    end
end
--��������
for row = 1, maxRows do
    for col = 1, maxColumns do
        print(array[row * maxColumns + col])
    end
end
-- �������������ģ����ϵ�ʵ���У������趨��ָ��������ֵ���������Ա������ nil ֵ�������ڽ�ʡ�ڴ�ռ䡣