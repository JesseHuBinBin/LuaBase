--[[ Lua ���� ]]
-- ���飬������ͬ�������͵�Ԫ�ذ�һ��˳�����еļ��ϣ�������һά����Ͷ�ά����
-- Lua�����������ֵ����ʹ��������ʾ������Ĵ�С���ǹ̶��ġ�

--[[ һά���� ]]
-- һά��������򵥵����飬���߼��ṹ�����Ա�һά���������forѭ����������е�Ԫ�أ����£�
-- arry={"Lua","Tutorial"}
-- for i = 0, 2 do
--     print(arry[i])
-- end
-- ���ǿ���ʹ��������������������Ԫ�أ����֪��������û��ֵ�򷵻�nil��
-- ��Lua����ֵ����1Ϊ��ʼ������Ҳ����ָ��0��ʼ��
-- ����֮�����ǻ������Ը���Ϊ��������ֵ��
-- arry={}
-- for i = -2, 2 do
--     arry[i]=i*2
-- end
-- for i = -2, 2 do
--     print(arry[i])
-- end

--[[ ��ά���� ]]
-- ��ά����������а����������һά�������������Ӧһ������
-- ������һ���������е����ж�ά����
-- ��ʼ������
-- arry={}
-- for i = 1,3 do
--     arry[i]={}
--     for j = 1, 3 do
--         arry[i][j]=i*j
--     end
-- end
-- ��������
-- for i = 1, 3 do
--     for j = 1,3 do
--         print(arry[i][j])
--     end
-- end
-- ��ͬ�������������������ж�ά���飺
-- ��ʼ������
array={}
maxRows=3
maxColumns=3
for row=1,maxRows do
    for col=1,maxColumns do
       array[row*maxColumns +col] = row*col
    end
end
--��������
for row = 1, maxRows do
    for col = 1, maxColumns do
        print(array[row*maxColumns+col])
    end
end

