# Find the difference between the sum of the squares and the square of the sum of the first 100 natural numbers

# Function to find difference
function SumSquareDifference(n)
    sum = 0
    square_sum = 0
    for i in 1:n
        sum += i
        square_sum = square_sum + i^2
    end
    sum = sum^2
    difference = sum - square_sum
    return difference
end

println("The sum square difference for the first 100 natural numbers is $(SumSquareDifference(100))")