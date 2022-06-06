# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which, a² + b² = c²
# There is exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc for this triplet.

# Find Pythagorean triplets
for i in 1:500
    for j in i:1000
        if i + j + sqrt(i^2 + j^2) == 1000
            println("$(i)² + $(j)² = $(floor(Int,sqrt(i^2 + j^2)))² and $i + $j + $(floor(Int,sqrt(i^2 + j^2))) = 1000")
            println("The product abc satisfying the constraints is thus $(i * j * floor(Int,sqrt(i^2 + j^2)))")
            break
        end
    end
end

