-- ��coroutine.create����ֻҪ����һ��Э�̣���ô���Э�̵�״̬Ĭ�Ͼ���suspend��ʹ��resum���������󣬻���running״̬������yieldʱ��״̬��Ϊsuspend���������return����ô��Э�̵�״̬��Ϊdead��
-- ��coroutine.resume()������Ҫ�ر�ע��һ����ǣ��������ֻҪ���þͷ���һ��booleanֵ��
-- ��coroutine.resume()����������óɹ�����ô����true;�����yield������ͬʱ����yield������Ĳ�����
-- ���û��yield,��ô��������֪��Э�̽�����֪������return����Э�̵�״̬��Ϊdead����ͬ�·���return��ֵ��
-- ��coroutine.resume()�����������ʧ�ܣ�����״̬Ϊdead��Э�̻ᵼ��ʧ�ܣ�����ô����false�����Ҵ���һ��"cannot resume dead coroutine"
function yieldReturn(arg)
    return arg
end
co_yieldtest=coroutine.create(
    function()
        print("����Э��״̬��"..coroutine.status(co_yieldtest))
        print("--")
        coroutine.yield()
        coroutine.yield(1)
        coroutine.yield(print("�����ε���"))
        coroutine.yield(yieldReturn("���Ĵε���"))
        return 2
    end
)
print("����ǰЭ��״̬"..coroutine.status(co_yieldtest))
print("-----------------------")
for i = 1, 6 do
    print("��"..i.."�ε���Э��",coroutine.resume(co_yieldtest))
    print("��ǰЭ��״̬"..coroutine.status(co_yieldtest))
    print("-----------------------")
end