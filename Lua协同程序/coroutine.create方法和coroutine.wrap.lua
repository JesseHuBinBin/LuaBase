--[[ coroutine.create()������continue.wrap��Ҫ�ر�ע������������ֵ�����ͣ���������Щ���ƣ����ǲ�����ȫһ����]]
-- coroutine.create()���ص���һ��Эͬ��������Ϊthread����Ҫʹ��coroutine.resume���е��ã���coroutine.wrap���ص���һ����ͨ�ķ�����������������Ϊfunction������ͨfunction��ͬ����ʹ�÷��� �����Ҳ���ʹ��coroutine.resume����
co_create =
    coroutine.create(
    function()
        print("co_create������" .. type(co_create))
    end
)
co_wrap =
    coroutine.wrap(
    function()
        print("co_wrap������"..type(co_wrap))
    end
)
coroutine.resume(co_create)
co_wrap()