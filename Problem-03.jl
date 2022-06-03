# Find the largest prime factor of the number 600851475143

# Create function to find prime factors
function PrimeFactors(n)
    c = 2
    while n > 1
        if n % c == 0
            println(c)
            n = n / c
        else
            c += 1
        end
    end
    return c
end

# Get result
final_result = PrimeFactors(600851475143)
println("The largest prime factor of 600851475143 is $final_result")