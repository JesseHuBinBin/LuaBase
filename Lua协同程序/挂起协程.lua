--[[ yield���˹���Э���⣬������ͬ�·������ݸ�resume�����һ�����ͬʱ������һ�λ���ʱ��Ҫ���ݵĲ����� ]]
cor =
    coroutine.create(
    function(a)
        print("����aֵΪ��", a)
        local b, c = coroutine.yield(a + 1) --�����ʾ����Э�̣����ҽ�a+1��ֵ���з��أ�����ָ����һ�λ�����Ҫb��c����������
        print("����b,c��ֵ�ֱ�Ϊ��", b, c)
        return b * c --Э�̽��������ҷ���b*c��ֵ
    end
)
print("��һ�ε��ã�", coroutine.resume(cor, 1))
print("�ڶ��ε��ã�", coroutine.resume(cor, 2, 2))
print("�����ε��ã�", coroutine.resume(cor))
