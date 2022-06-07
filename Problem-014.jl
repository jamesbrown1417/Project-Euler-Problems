function collatzsequence(n::Int64)
    counter = 1
    while n > 1
        n = iseven(n) ? n ÷ 2 : 3n + 1
        counter += 1
    end
    return counter
end


CollatzChainLengths = Int64[]

for i in 1:1000000
    push!(vector, collatzsequence(i))
end

answer = argmax(vector)

