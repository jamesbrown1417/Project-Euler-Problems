# Find smallest number that is divisible by all integers from 1 to 20

# Load packages required 
using Primes
using DataStructures

# Function to find smallest number divisible by all integers from 1 to n
function smallest_multiple(n)
    all_factors = DataStructures.DefaultOrderedDict(0) # Empty DefaultOrderedDict
    for i in 1:n
        result = factor(DataStructures.OrderedDict, i)
        for j in keys(result)
            if result[j] > all_factors[j]
                all_factors[j] = result[j]
            elseif result[j] <= all_factors[j]
                continue
            else
                all_factors[j] = result[j]
            end
        end
    end
    smallest_multiple = 1
    for (key, value) in all_factors
        x = key ^ value
        smallest_multiple *= x
    end
    return smallest_multiple
end

println("The smallest number that is divisible by all integers from 1 to 30 is $(smallest_multiple(30))")