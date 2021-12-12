--[[
    �ɱ����
--]]
-- Lua �������Խ��ܿɱ���Ŀ�Ĳ������� C �������ƣ��ں��������б���ʹ������ ... ��ʾ�����пɱ�Ĳ���
function add(...)
    local s = 0
    for i, v in ipairs {...} do --> {...} ��ʾһ�������б䳤�������ɵ�����
        s = s + v
    end
    return s
end
print(add(3, 4, 5, 6, 7)) --->25

-- ���ǿ��Խ��ɱ������ֵ��һ��������
-- ���磬���Ǽ��㼸������ƽ��ֵ��
function average(...)
    result = 0
    local arg = {...} --> arg Ϊһ�����ֲ�����
    for i, v in ipairs(arg) do
        result = result + v
    end
    print("�ܹ����� " .. #arg .. " ����")
    return result / #arg
end
print("ƽ��ֵΪ", average(10, 5, 3, 4, 5, 6))

-- ����Ҳ����ͨ�� select("#",...) ����ȡ�ɱ����������:
function average(...)
    result = 0
    local arg = {...}
    for i, v in ipairs(arg) do
        result = result + v
    end
    print("�ܹ����� " .. select("#", ...) .. " ����")
    return result / select("#", ...)
end
print("ƽ��ֵΪ", average(10, 5, 3, 4, 5, 6))

-- ��ʱ�����ǿ�����Ҫ�����̶��������Ͽɱ�������̶�����������ڱ䳤����֮ǰ:
function fwrite(fmt, ...) ---> �̶��Ĳ���fmt
    return io.write(string.format(fmt, ...))
end
fwrite("runoob\n") --->fmt = "runoob", û�б䳤������
fwrite("%d%d\n", 1, 2) --->fmt = "%d%d", �䳤����Ϊ 1 �� 2

-- ͨ���ڱ����䳤������ʱ��ֻ��Ҫʹ�� {��}��Ȼ���䳤�������ܻ����һЩ nil����ô�Ϳ����� select ���������ʱ䳤�����ˣ�select('#', ��) ���� select(n, ��)
-- ��select('#', ��) ���ؿɱ�����ĳ��ȡ�
-- ��select(n, ��) ���ڷ��ش���� n ��ʼ������λ�õ����в����б�
-- ���� select ʱ�����봫��һ���̶�ʵ�� selector(ѡ�񿪹�) ��һϵ�б䳤��������� selector Ϊ���� n����ô select ���ز����б��д����� n ��ʼ������λ�õ����в����б�����ֻ��Ϊ�ַ��� #������ select ���ر䳤������������
function f(...)
    a = select(3, ...) -->�ӵ�����λ�ÿ�ʼ������ a ��Ӧ�ұ߱����б�ĵ�һ������
    print(a)
    print(select(3, ...)) -->��ӡ�����б����
end
f(0, 1, 2, 3, 4, 5)

do
    function foo(...)
        for i = 1, select("#", ...) do -->��ȡ��������
            local arg = select(i, ...) -->��ȡ������arg ��Ӧ�����ұ߱����б�ĵ�һ������
            print("arg", arg)
        end
    end

    foo(1, 2, 3, 4)
end
