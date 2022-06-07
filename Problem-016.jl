# Find the sum of the digits of the number 2^1000

# Use big int type to get number
number = BigInt(1)
for i in 1:1000
    number *= 2
end

# Use digits to get each individual number in an array
num_array = digits(number)
answer = sum(num_array)

println("The sum of the digits of the number 2^1000 is $answer")