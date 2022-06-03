# Find the largest palindrome made from the product of two 3-digit numbers

# Create function to find largest palindrome
function LargestPalindrome(upper, lower)
    palindromes = Int64[]
    for i in upper:-1:lower
        for j in upper:-1:lower
            product = string(i * j)
            if product == reverse(product)
                push!(palindromes, parse(Int64, product))
            else
                continue
            end
        end
    end
    return maximum(palindromes)
end

LargestPalindrome(999,100)