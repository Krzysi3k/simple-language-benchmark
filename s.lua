
function silnia(n)
    if n > 1 then
        local result = silnia(n-1)
        return result * n
    end
    return 1
end

local started = os.clock()
for i = 1,10000 do
    silnia(15)
    for x = 1,10000 do
        if x == 9876 then
            break
        end
    end
end

local ended = (os.clock() - started) * 1000
print("finished in: " .. tostring(ended) .. "ms")