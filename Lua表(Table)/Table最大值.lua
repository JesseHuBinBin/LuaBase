--[[
    Table 最大值
--]]
-- table.maxn在Lua5.2之后该方法已经不存在了，我们定义了table_maxn方法来实现。
-- 以下实例演示了如何获取table中的最大值：
function table_maxn(t)
    local mn=nil
    for k,v in ipairs(t) do
        if (mn==nil) then
            mn=v
        end
        if mn < v then
            mn=v
        end
    end
    return mn
end
tbl={[1]=2,[2]=6,[3]=34,[26]=5}
print("tbl最大值：",table_maxn(tbl))
print("tbl长度：",#tbl)

-- 注意：当我们获取table的长度的时候无论使用#还是 table.getn 其都会在索引中断的地方停止技术，而导致无法正确取得table的长度。
-- 可以用一下的方法来代替：
function table_len(t)
    local len=0
    for k, v in pairs(t) do
        len=len+1
    end
    return len
end
print("使用函数table_len获取的tbl长度：",table_len(tbl))