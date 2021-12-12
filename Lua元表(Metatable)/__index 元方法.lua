-- ��Lua Table �����ǿ��Է��ʶ�Ӧ��key���õ�valueֵ������ȱ�޷�������table���в�����������ӣ���
-- ���Lua�ṩ��Ԫ��Metatable�����������Ǹı�table����Ϊ��ÿ����Ϊ�����˶�Ӧ��Ԫ������
-- ���磬ʹ��Ԫ�����ǿ��Զ���Lua��μ�������tabele����Ӳ���a+b
-- ��Lua��ͼ��������������ʱ���ȼ������֮һ�Ƿ���Ԫ��֮�����Ƿ���һ����_add���ֶΣ����ҵ�������ö�Ӧ��ֵ��_add�ȼ�ʱ�ֶΣ����Ӧ��ֵ��������һ����������table��������Ԫ������
-- ����������Ҫ�ĺ���������Ԫ��
-- setmetatable(table,metatable):��ָ��table����Ԫ��metatable�������Ԫ��metatable���д���_metatable��ֵ��setmetatable��ʧ�ܡ�
-- getmetatable(table):���ض����Ԫ��metatable����
-- mytable={}                                   --��ͨ��
-- mymetatable={}                               --Ԫ��
-- setmetatable(mytable,mymetatable)            --��mymetatable��Ϊmytable��Ԫ��
-- ���ϴ���Ҳ����ֱ��д��һ�У�
-- mytable = setmetatable({},{})
-- ���·��ض���Ԫ��
-- getmetatable(mytable)--��᷵��mymetatable

--[[
    __indexԪ����
--]]
-- ����ͨ����������table��ʱ����������û��ֵ����ôLua�ͻ�Ѱ�Ҹ�table��metatable(�ζ���metatable)�е�__index�������__index����һ�����Lua���ڱ���в�����Ӧ�ļ���
-- ���ǿ�����ʹ��lua������뽻��ģʽ�鿴��
other = {foo = 3}
t = setmetatable({}, {__index = other})
print(t.foo)
print(t.bar)
-- ���__index����һ�������Ļ���Lua�ͻ��������Ǹ�������table�ͼ�����Ϊ�������ݸ�������
-- __indexԪ�����鿴����Ԫ���Ƿ���ڣ���������ڣ����ؽ��Ϊnil�������������_index���ؽ��.
mytable =
    setmetatable(
    {key1 = "value1"},
    {
        __index = function(mytable, key)
            if key == "key2" then
                return "metatablevalye"
            else
                return nil
            end
        end
    }
)
print(mytable.key1, mytable.key2)
-- ʵ��������
-- mytable ��ֵΪ{key1="value1"}
-- mytable ������Ԫ��Ԫ����Ϊ__index��
-- ��mytable���в���key1������ҵ������ظ�Ԫ�أ��Ҳ����������
-- ��mytable���в���key2������ҵ�������metatablevalue���Ҳ����������
-- �ж�Ԫ����û��__index���������__index������һ������������øú�����
-- Ԫ�����в鿴�Ƿ���"key2"���Ĳ�����mytable.key2�����ã����������"key2"��������"metatablevalue"�����򷵻�mytable��Ӧ�ļ�ֵ��
-- ���ǿ��Խ����ϵĴ����д�ɣ�
mytable = setmetatable({key1 = "value1"}, {__index = {key2 = "metatablevalue"}})
print(mytable.key1, mytable.key2)

-- �ܽ�
-- Lua����һ����Ԫ��ʱ�Ĺ�����ʵ��������3�����裺
-- ���ڱ��в��ң�����ҵ������ظ�Ԫ�أ��Ҳ����������
-- ���жϸñ��Ƿ���Ԫ�����û��Ԫ������nil����Ԫ���������
-- ���ж�Ԫ����û��__index���������__index����Ϊnil���򷵻�nil�����__index������һ�������ظ�1,2,3��=���__index������һ���������򷵻ظú����ķ���ֵ��
