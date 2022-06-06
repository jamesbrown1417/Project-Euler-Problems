# Find all natural numbers below 10 that
# are multiples of 3 or 5 and find their sum.

# Initialise empty list of integers
results = Int64[]

# Iterate over numbers and add to list if criteria are met
for i in 1:999
    if i % 3 == 0 || i % 5 == 0
        push!(results, i)
    end
end

final_result = sum(results)
println("The sum of all numbers below 1000 divisible by 3 or 5 is $final_result")