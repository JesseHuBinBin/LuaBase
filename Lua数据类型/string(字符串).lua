--[[ string���ַ����� ]]
-- �ַ�����һ��˫���Ż���������ʾ��

string1 = "this is string1"
string2 = 'this is string2'
-- Ҳ������ 2 �������� "[[]]" ����ʾ"һ��"�ַ�����

-- ʵ��
html = [[
<html>
<head></head>
<body>
    <a href="http://www.runoob.com/">����̳�</a>
</body>
</html>
]]
print(html)

-- �ڶ�һ�������ַ����Ͻ�����������ʱ��Lua �᳢�Խ���������ַ���ת��һ������:

print("2" + 6)
print("2" + "6")
print("2 + 6")
print("-2e2" * "6")
-- print("error" + 1)  -- (����һ������ʾ)���ϴ�����"error" + 1ִ�б����ˣ��ַ�������ʹ�õ��� .. ���磺
print("a" .. 'b')
print(157 .. 428)

-- ʹ�� # �������ַ����ĳ��ȣ������ַ���ǰ�棬����ʵ����
len = "www.runoob.com"
print(#len)
print(#"www.runoob.com")
