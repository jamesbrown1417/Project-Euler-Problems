# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
# Find the sum of all the primes below two million.

# Load package
using Primes

# Find all primes below 2000000
primes_below_2_million = primes(2000000- 1)

# Get result
println("The sum of all primes below two million is $(sum(primes_below_2_million))") 
