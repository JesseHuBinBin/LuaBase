--[[
    ��һ��������ͨ��һ���򵥵����ӽ������ʹ��metamethods��
    �ζ�����ʹ��table��������ϣ�ʹ�ú������������ϵĲ�����������������like������
    ������һ�����ڶ�����Щ������Ȼ��ʹ�ù��캯������һ���ϼ���
--]]
Set={}
Set.mt={}--�����м��Ϲ���һ��metatable
function  Set.new(t)
    local set={}
    setmetatable(set, Set.mt)
    for _, l in ipairs(t) do
        set[l]=true
    end
    return set
end

