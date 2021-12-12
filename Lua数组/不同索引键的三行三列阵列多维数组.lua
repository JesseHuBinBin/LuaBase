--[[
    不同索引键的三行三列阵列多维数组：
--]]
-- 初始化数组
array = {}
maxRows = 3
maxColumns = 3
for row = 1, maxRows do
    for col = 1, maxColumns do
        array[row * maxColumns + col] = row * col
    end
end
--访问数组
for row = 1, maxRows do
    for col = 1, maxColumns do
        print(array[row * maxColumns + col])
    end
end
-- 正如你所看到的，以上的实例中，数组设定了指定的索引值，这样可以避免出现 nil 值，有利于节省内存空间。