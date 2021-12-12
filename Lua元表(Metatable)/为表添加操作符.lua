--[[
    为表添加操作符
--]]
-- 以下实例演示了两表相加的操作：
-- 实例：
-- 计算表中最大值，table.maxn在Lua5.2以上版本中已经无法使用
-- 自定义计算表中最大键值函数table_maxn，即计算表的元素个数
function table_maxn(t)
    local mn = 0
    for k, v in pairs(t) do
        if mn<k then
            mn=k
        end
    end
    return mn
end

-- 两表相加操作
mytable=setmetatable({1,2,3},{
    __add=function(mytable,newtable)
        for i = 1, table_maxn(newtable) do
            table.insert(mytable,table_maxn(mytable)+1,newtable[i])
        end
        return mytable
    end
})
secondtable={4,5,6}
mytable = mytable+secondtable
for k, v in ipairs(mytable) do
    print(k,v)
end
-- __add键包含在元表中，并且进行相加操作。表中对应的操作列表如下：（注意：__是两个下划线）
-- 模式          描述
-- __add         对应的运算符'+'
-- __sub         对应的运算符'-'
-- __mul         对应的运算符'*'
-- __div         对应的运算符'/'
-- __mod         对应的运算符'%'
-- __unm         对应的运算符'-'
-- __concat      对应的运算符'..'
-- __eq          对应的运算符'=='
-- __lt          对应的运算符'<'
-- __le          对应的运算符'<='