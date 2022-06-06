# Find the 10001ˢᵗ Prime

# Load required packages
using Primes

# Function to find nth Prime
nth_prime = function (n)
    i = 1
    primes_list = []

    while length(primes_list) < n
        primes_list = primes(i)
        i += 2
    end
    return primes_list[end]
end

println("The 10001st prime is $(nth_prime(10001))")

