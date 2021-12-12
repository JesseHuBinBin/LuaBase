--[[
    多维数组
--]]
-- 多维数组既数组中包含数组或者一维数组的索引键对应一个数组
-- 以下是一个三行三列的阵列多维数组
-- 初始化数组
arry = {}
for i = 1, 3 do
    arry[i] = {}
    for j = 1, 3 do
        arry[i][j] = i * j
    end
end
-- 访问数组
for i = 1, 3 do
    for j = 1, 3 do
        print(arry[i][j])
    end
end
