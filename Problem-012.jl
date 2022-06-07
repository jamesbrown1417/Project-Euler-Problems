# Find the first triangular number with over 500 divisors
using Primes

# Loop through triangular numbers, find number of factors and break loop when the
# number of factors exceeds 500 and print results.

# Initialise variable
j = 1

# main loop
while true
    triangular_number = sum(1:j)
    prime_factorisation = factor(Dict, triangular_number)
    factors = 1
    for value in values(prime_factorisation)
        factors *= (value + 1)
    end
    j += 1
    if factors > 500
        println("The triangular number $triangular_number has $factors factors")
        break
    end
end