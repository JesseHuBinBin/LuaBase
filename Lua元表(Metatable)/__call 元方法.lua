--[[
    __call 元方法
--]]
-- __call元方法在Lua中调用一个值是调用。以下实例演示了计算表中元素的和：
-- 计算表中最大值，table.maxn在Lua5.2以上的版本中已经无法使用
-- 自定要计算表中最大键值函数table_maxn,即计算表的元素个数
function table_maxn(t)
    local mn = 0
    for k, v in pairs(t) do
        if mn<k then
            mn=k
        end
    end
    return mn
end
--定义元方法__call
mytable = setmetatable({10},{
    __call=function (mytable,newtable)
        sum=0
        for i = 1, table_maxn(mytable) do
            sum=sum+mytable[i]
        end
        for i = 1,table_maxn(newtable) do
            sum=sum+newtable[i]
        end
        return sum
    end
})
newtable={10,20,30}
print(mytable(newtable))