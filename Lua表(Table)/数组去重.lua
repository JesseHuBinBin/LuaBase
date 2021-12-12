--[[
    数组去重函数
--]]
function removeRepeat(a)
    local b = {}
    for k, v in ipairs(a) do
        if (#b == 0) then
            b[1] = v
        else
            local index = 0
            for i = 1, #b do
                if (v == b[i]) then
                    break
                end
                index = index + 1
            end
            if (index == #b) then
                b[#b + 1] = v
            end
        end
    end
    return b
end

function output(t)
    for k, v in ipairs(t) do
        print(k, v)
    end
end
arr = {1, 1, 1, 2, 4, 5, 3, 2, 5, 3, 6}
narr = removeRepeat(arr)
table.sort(narr)
output(narr)
