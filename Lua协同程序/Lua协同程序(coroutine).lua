--[[
    LuaЭͬ����coroutine��
--]]
-- ʲô��Эͬ����
-- LuaЭͬ����coroutine�����̱߳Ƚ����ƣ�ӵ�ж����Ķ�ջ�������ľֲ�������������ָ��ָ�ͬʱ��������Эͬ������ȫ�ֱ����������󲿷ֶ�����
-- Эͬ�Ƿǳ�ǿ��Ĺ��ܣ�����������Ҳ�ܸ��ӡ�

--[[ �̺߳�Эͬ�������� ]]
-- �̺߳�Эͬ������Ҫ�������ڣ�һ�����ж���߳̿���ͬʱ���м����̣߳���Эͬ����ȱ��Ҫ�˴�Э�������С�
-- ����һָ��ʱ��ֻ��һ��Эͬ���������У���������������е�Эͬ����ֻ����ȷ����Ҫ������ʱ��Żᱻ����
-- Эͬ�����е�����ͬ���Ķ��̣߳��ڵȴ�ͬһ���߳����ļ����߳��е�����Эͬ��

--[[ �����﷨ ]]
-- ����                           ����
-- coroutine.create()                ����coroutine������coroutine��������һ������������resume���ʹ�õ�ʱ��ͻ��Ѻ�������
-- coroutine.resume()                ����coroutine����create���ʹ��
-- coroutine.yield()                 ����coroutine����coroutine����Ϊ����״̬�������resume���ʹ�����кܶ����õ�Ч��
-- coroutine.status()                �鿴coroutine״̬��coroutine��״̬�����֣�dead��suspended��running������ʲôʱ��Ӵ������״̬
-- coroutine.wrap()                  ����coroutine������һ��������һ������������������ͽ���coroutine����create�����ظ�
-- coroutine.running()               ���������ܵ�coroutine��һ��coroutine����һ���̣߳���ʹ��running��ʱ�򣬾��Ƿ���һ��coroutine���̺߳�

-- ����ʵ����ʾ�����ϸ����������÷���
co =
    coroutine.create(
    function(i)
        print(i)
    end
)
coroutine.resume(co, 1) --1
print(coroutine.status(co)) --dead

print("------------------")

co=coroutine.wrap(
    function(i)
        print(i)
    end
)
co(1)

print("------------------")

co2 =
    coroutine.create(
    function()
        for i = 1, 10 do
            print(i)
            if i == 3 then
                print(coroutine.status(co2)) --running
                print(coroutine.running()) --thread:XXXX
            end
            coroutine.yield()
        end
    end
)
coroutine.resume(co2) --1
coroutine.resume(co2) --2
coroutine.resume(co2) --3

print(coroutine.status(co2))  --suspended
print(coroutine.running())

print("---------")

-- coroutine.running�Ϳ��Կ�������coroutine�ڵײ�ʵ�־���һ���̡߳�
-- ��createһ��coroutine��ʱ����������߳���ע����һ���¼���
-- ��ʹ��resume�����¼���ʱ��create��coroutine�����ͱ�ִ���ˣ�������yield��ʱ��ʹ������ǰ�̣߳��Ⱥ��ٴ�resume�����¼���

