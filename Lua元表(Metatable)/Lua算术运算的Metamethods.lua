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
function Set.union(a,b)   --����
    local res = Set.new{}  --ע�������Ǵ�����
    for i in pairs(a) do res[i] = true end
    for i in pairs(b) do res[i] = true end
    return res
end
function Set.intersection(a,b)   --����
    local res = Set.new{}   --ע�������Ǵ�����
    for i in pairs(a) do
        res[i] = b[i]
    end
    return res
end
function Set.tostring(set)  --��ӡ�����������ĵ��ú���
    local s = "{"
    local sep = ""
    for i in pairs(set) do
        s = s..sep..i
        sep = ","
    end
    return s.."}"
end
function Set.print(set)   --��ӡ����������
    print(Set.tostring(set))
end
--[[
Lua�ж���ĳ��õ�Metamethod������ʾ��
�����������Metamethod��
__add�������㣩��__mul���ˣ���__sub(��)��__div(��)��__unm(��)��__pow(��)��__concat������������Ϊ����
��ϵ�������Metamethod��
__eq�����ڣ���__lt��С�ڣ���__le��С�ڵ��ڣ��������Ĺ�ϵ�����Զ�ת��Ϊ���������������㡣
�ⶨ���Metamethod��
__tostring��tostring��������Ϊ����__metatable���Ա�getmetatable��setmetatable����Ϊ����
]]
Set.mt.__add = Set.union

s1 = Set.new{1,2}
s2 = Set.new{3,4}
print(getmetatable(s1))
print(getmetatable(s2))   
s3 = s1 + s2 
Set.print(s3)

Set.mt.__mul = Set.intersection   --ʹ���������������弯�ϵĽ�������
Set.print((s1 + s2)*s1)