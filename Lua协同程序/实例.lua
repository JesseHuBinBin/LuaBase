-- coroutine.runnning�Ϳ��Կ�������coroutine�ڵײ�ʵ�־���һ���̡߳�
-- ��createһ��coroutine��ʱ����������߳���ע����һ���¼���
-- ��ʹ��resume�����¼���ʱ��create��coroutine�����ͱ�ִ���ˣ�������yield��ʱ��ʹ������ǰ�̣߳��Ⱥ��ٴ�resume�����¼���
function foo(a)
    print("foo �������", a)
    return coroutine.yield(2 * a) --���� 2*a��ֵ
end

co =
    coroutine.create(
    function(a, b)
        -- print("��һ��Эͬ�������", a, b) --co-body 1 10
        local r = foo(a + 1)

        -- print("�ڶ���Эͬ�������", r)
        local r, s = coroutine.yield(a + b, a - b) -- a��b��ֵΪ��һ�ε���Эͬ����ʱ����

        -- print("������Эͬ�������", r, s)
        return b, "����Эͬ����" --bֵΪ�ڶ��ε���Эͬ������
    end
)

print("--�ָ���----")
print("main", coroutine.resume(co, 1, 10)) --true ,4
print("--�ָ���----")
print("main", coroutine.resume(co, "r")) --true 11 -9
print("--�ָ���----")
print("main", coroutine.resume(co, "x", "y")) --true 10 end
print("--�ָ���----")
print("main", coroutine.resume(co, "x", "y")) --cannot resume dead coroutine
print("--�ָ���----")

--[[ ����ʵ���������£� ]]
-- ������resume����Эͬ�����ѣ�resume�����ɹ�����true�����򷵻�false��
-- ��Эͬ�������У�
-- �����е�yield��䣻
-- ��yield����Эͬ���򣬵�һ��resume���أ���ע�⣺�˴�yield���أ�������resume������
-- ���ڶ���resume���ٴλ���Эͬ���򣻣�ע�⣺�˴�resume�Ĳ����У����˵�һ��������ʣ�µĲ�������Ϊyield�Ĳ�����
-- ��yield���أ�
-- ��Эͬ����������У�
-- �����ʹ�õ�Эͬ�������������ɺ��������resume�����������cannot resume dead coroutine
--[[ resume��yield�����ǿ��֮�����ڣ�resume���������У������ⲿ״̬�����ݣ����뵽Эͬ�����ڲ�����yield���ڲ���״̬�����ݣ����ص������У� ]]
