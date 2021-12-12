-- Lua和C很容易结合，使用C为Lua包。
-- 与Lua中写包不同，C包在使用前必须首先加载并连接，在大多数系统中最容易的实现方式是通过动态连接库机制。
-- Lua在一个叫loadlib的函数内提供了所有的动态连接的功能。这个函数有两个参数：库的绝对路径和初始化函数。所以典型的调用例子如下：
-- local path="/usr/local/lua/lib/libluasocket.so"
-- local f=loadfile(path,"luaopen_socket")
-- loadlib函数加载指定的库并且连接到Lua，然而它并不打开库（也就是说没哟调用函数初始化），反之他返回初始化函数作为Lua的一个函数，这样我们就可以直接在Lua中调用他。
-- 如果加载动态库或者查找初始化函数出错，loadlib将返回nil和报错信息。我们可以修改前面一段代码，使其检测错误然后调用初始化函数：
local path="/usr/local/lua/lib/libluasocket.so"
-- 或者 path ="C:\\windows\\luasocket.dll"这是Windows平台下
local f = assert(loadlib(path,"luaopen_socket"))
f() --真正打开库
-- 一般情况下班我们期望二进制的发布库包含一个与前面代码段相似的stub文件，安装二进制库的时候可以随便放在某个目录，只需要修改stub文件对应二进制库的实际路劲即可。
-- 将stub文件所在的目录加入到LUA_PATH，这样设定后就可以使用require函数加载C库
