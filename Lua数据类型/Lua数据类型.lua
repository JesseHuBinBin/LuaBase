--[[
    Lua中有8个基本类型分为：nil,boolean,number,string,userdata,funciton,thread和table
    nil：这个最简单，只有只nil属于该类，表示一个无效值（在条件表达式中相当于false�?
    boolean：包含两个值，false和ture
    number：表示双精度类型实浮点数
    string：字符串由一串双引号或者单引号表示
    function：由C后者Lua编写的函�?
    userdata：表示任意存储在变量中的C数据结构
    thread：表示执行的独立线路，用于执行协同程�?
    table：Lua中的表（table）其实是一个“关联数组”（associative arrys），数组索引可以是数字，字符串或者表类型�?
           在Lua里，table的创建是通过“构造表达式”来完成的，最简单构造表达式是{}，用来创建一个空�?
]]
--
-- print(type("Helllo Wordld"))           -->string
-- print(type(10.4*3))                    -->number
-- print(type(print))                     -->function
-- print(type(type))                      -->function
-- print(type(true))                      -->boolean
-- print(type(nil))                       -->nil
-- print(type(type(x)))                   -->string



