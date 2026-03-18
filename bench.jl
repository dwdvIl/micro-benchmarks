import Dates

function bench()
    local number = 0
    local start = Dates.now()

    for i=1:1000000000
        number = number + 1
    end

    #println(Dates.now() - start)
    println(number)
    return Dates.now() - start
end

@time bench()

# 0ms in CompilerExplorer aswell as on my machine (O3 by default) - Julia 1.10.0