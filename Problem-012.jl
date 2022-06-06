using Primes
num_factors = 0
i = 1
while num_factors < 500
    triangular_number = sum(1:i)
    prime_factorisation = factor(Dict, triangular_number)
    factors = 1
    for value in values(prime_factorisation)
        factors *= (value + 1)
    end
    if factors > 500
        println(triangular_number)
        break
    end
end

