-- table��Lua��һ�����ݽṹ�����������Ǵ�����ͬ���������ͣ��磺���飬�ֵ�ȡ�
-- Lua tableʹ�ù��������飬��������������͵�ֵ��������������������ֵ������nil��
-- Lua table���ǹ̶���С�ģ�����Ը����Լ�����������ݡ�
-- LuaҲ��ͨ��table�����ģ��(moudle),��(package)�Ͷ���(Object)�ġ�����string.format��ʾʹ��"format"������table string

--[[
    table(��)�Ĺ���
--]]
-- �������Ǵ����ͳ�ʼ����ı��ʽ������Lua���е�ǿ���ܵĶ�������򵥵Ĺ��캯����{}����������һ���ձ�����ֱ�ӳ�ʼ�����飺
-- ��ʼ����
mytable={}
-- ָ��ֵ
mytable[1]="Lua"
-- �Ƴ�����
mytable=nil--Lua�������ջ��ͷ��ڴ�
-- ������Ϊtable a����Ԫ�أ�Ȼ��aֵ����b����a��b��ָ��ͬһ���ڴ档
-- ���a����Ϊnil����bͬ���ܷ���table��Ԫ�ء����û��ָ���ı���ָ��a��lua���������ջ��ƻ��������Ӧ���ڴ档
-- ʵ��
-- �򵥵�table
mytable = {}
print("mytable�������ǣ�",type(mytable))
mytable[1]="Lua"
mytable["wow"]="�޸�ǰ"
print("mytable����Ϊ1��Ԫ����",mytable[1])
print("mytable����ΪwowԪ����",mytable["wow"])

-- alternatetable��mytable����ָͬһ��table
alternatetable=mytable
print("alternatetable����Ϊ1��Ԫ����",alternatetable[1])
print("alternatetables����Ϊwow��Ԫ����",alternatetable["wow"])

alternatetable["wow"]="�޸ĺ�"
print("mytable����Ϊ1��Ԫ����",mytable["wow"])

-- �ͷű���
alternatetable=nil
print("alternatetable ��",alternatetable)

-- mytable��Ȼ���Է���
print("mytable����Ϊwow��Ԫ����",mytable["wow"])

mytable=nil
print("mytable��",mytable)