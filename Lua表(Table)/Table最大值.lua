--[[
    Table ���ֵ
--]]
-- table.maxn��Lua5.2֮��÷����Ѿ��������ˣ����Ƕ�����table_maxn������ʵ�֡�
-- ����ʵ����ʾ����λ�ȡtable�е����ֵ��
function table_maxn(t)
    local mn=nil
    for k,v in ipairs(t) do
        if (mn==nil) then
            mn=v
        end
        if mn < v then
            mn=v
        end
    end
    return mn
end
tbl={[1]=2,[2]=6,[3]=34,[26]=5}
print("tbl���ֵ��",table_maxn(tbl))
print("tbl���ȣ�",#tbl)

-- ע�⣺�����ǻ�ȡtable�ĳ��ȵ�ʱ������ʹ��#���� table.getn �䶼���������жϵĵط�ֹͣ�������������޷���ȷȡ��table�ĳ��ȡ�
-- ������һ�µķ��������棺
function table_len(t)
    local len=0
    for k, v in pairs(t) do
        len=len+1
    end
    return len
end
print("ʹ�ú���table_len��ȡ��tbl���ȣ�",table_len(tbl))