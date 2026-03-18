
require 'os'

function bench()
    local number = 0
    local start = os.clock()

    for i=1,1000000000 do
        number = number + 1
    end

    print((os.clock() - start) * 1000)
    print(number)
end

bench()
-- ~3700ms on my machine - Lua 5.4.2
-- ~960ms on my machine - LuaJIT 2.1.ROLLING