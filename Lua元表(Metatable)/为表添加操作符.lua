--[[
    Ϊ����Ӳ�����
--]]
-- ����ʵ����ʾ��������ӵĲ�����
-- ʵ����
-- ����������ֵ��table.maxn��Lua5.2���ϰ汾���Ѿ��޷�ʹ��
-- �Զ�������������ֵ����table_maxn����������Ԫ�ظ���
function table_maxn(t)
    local mn = 0
    for k, v in pairs(t) do
        if mn<k then
            mn=k
        end
    end
    return mn
end

-- ������Ӳ���
mytable=setmetatable({1,2,3},{
    __add=function(mytable,newtable)
        for i = 1, table_maxn(newtable) do
            table.insert(mytable,table_maxn(mytable)+1,newtable[i])
        end
        return mytable
    end
})
secondtable={4,5,6}
mytable = mytable+secondtable
for k, v in ipairs(mytable) do
    print(k,v)
end
-- __add��������Ԫ���У����ҽ�����Ӳ��������ж�Ӧ�Ĳ����б����£���ע�⣺__�������»��ߣ�
-- ģʽ          ����
-- __add         ��Ӧ�������'+'
-- __sub         ��Ӧ�������'-'
-- __mul         ��Ӧ�������'*'
-- __div         ��Ӧ�������'/'
-- __mod         ��Ӧ�������'%'
-- __unm         ��Ӧ�������'-'
-- __concat      ��Ӧ�������'..'
-- __eq          ��Ӧ�������'=='
-- __lt          ��Ӧ�������'<'
-- __le          ��Ӧ�������'<='