--[[
    Table ШЅжи
--]]
table = {1, 2, 3, 4, 20, 6, 7, 7, 15, 28}
function table_unique(t)
    local check = {}
    local n = {}
    for k, v in pairs(t) do
        if not check[v] then
            n[k] = v
            check[v] = v
        end
    end
    return n
end

for k, v in pairs(table_unique(table)) do
    print("value is", v)
end
