for i = 10, 1, -1 do
    repeat
        if i == 5 then
            print("continue code here")
            break
        end
        print(i, "loop code here")
    until true
end
