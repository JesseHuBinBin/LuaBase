--[[ ��һ�µ����ӽ�����⣬�����yield()��resume()������������Ϊ��������ˣ��ͺ������ˡ� ]]
-- �����ټ�һ�£�
co = coroutine.create(function (a)
    local r = coroutine.yield(a+1)  --yield()����a+1����������resume()��������2
    print("r="..r)                  --r��ֵ�ǵڶ���resume()��������,100
end)
status,r=coroutine.resume(co,1)     --resume()��������ֵ��һ���������״̬true��һ����yield�ķ���ֵ2
coroutine.resume(co,100)            --resume()����true