import Dates

function silnia(n)::Int64
    if n > 1
        result = silnia(n-1)
        return result * n
    end
    return 1
end

started = Dates.now()

for i = 1:10000
    silnia(15)
    for x = 1:10000
        if x == 9876
            break
        end
    end
end

println("finished in: ", Dates.now() - started)