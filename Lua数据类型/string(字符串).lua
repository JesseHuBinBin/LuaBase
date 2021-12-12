--[[ string（字符串） ]]
-- 字符串由一对双引号或单引号来表示。

string1 = "this is string1"
string2 = 'this is string2'
-- 也可以用 2 个方括号 "[[]]" 来表示"一块"字符串。

-- 实例
html = [[
<html>
<head></head>
<body>
    <a href="http://www.runoob.com/">菜鸟教程</a>
</body>
</html>
]]
print(html)

-- 在对一个数字字符串上进行算术操作时，Lua 会尝试将这个数字字符串转成一个数字:

print("2" + 6)
print("2" + "6")
print("2 + 6")
print("-2e2" * "6")
-- print("error" + 1)  -- (这是一个错演示)以上代码中"error" + 1执行报错了，字符串连接使用的是 .. ，如：
print("a" .. 'b')
print(157 .. 428)

-- 使用 # 来计算字符串的长度，放在字符串前面，如下实例：
len = "www.runoob.com"
print(#len)
print(#"www.runoob.com")
