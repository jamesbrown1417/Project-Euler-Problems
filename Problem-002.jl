# Find the sum of even valued terms in the
# Fibonacci sequence that do not exceed four million

# Starting values
Fibonacci = Int64[0, 1]

# Continue sequence until 4 million is exceeded
while true
    new_result = Fibonacci[end - 1] + Fibonacci[end]
    if new_result < 4000000
        push!(Fibonacci, new_result)
    else
        break
    end
end

# Find sum of even numbered terms
Even_Fibonacci = Int64[]

for i in 1:length(Fibonacci)
    if Fibonacci[i] % 2 == 0
        push!(Even_Fibonacci, Fibonacci[i])
    else
        continue
    end
end

final_result = sum(Even_Fibonacci)
println("The sum of all even numbered terms in the Fibonacci sequence that are less than 4,000,000 is $final_result")
