--[[ coroutine.resume()������Ҫ�ر�ע���һ����ǣ��������ֻ��Ҫ���þͻ᷵��һ��booleanֵ�� ]]
-- coroutine.resume()����������óɹ�����ô����true�������yield������ͬʱ����yield������Ĳ��������ʧ�ܣ���ô����false�����Ҵ���һ��"cannot resume deal coroutine"
co_yieldtest =
    coroutine.create(
    function()
        coroutine.yield()
        coroutine.yield(1)
        return 2
    end
)
for i = 1, 4 do
    print("��"..i.."�ε���Э�̣�",coroutine.resume(co_yieldtest))
end