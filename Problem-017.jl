#= 
Find the cumulative length of all numbers from 1 to 1000 written in words
using standard british syntax and ignoring hyphens and spaces.
=#

starting_nums =
 [
    "",
    "one",
    "two",
    "three",
    "four",
    "five",
    "six",
    "seven",
    "eight",
    "nine",
    "ten"
    ]

teen_nums = 
[
    "eleven",
    "twelve",
    "thirteen",
    "fourteen",
    "fifteen",
    "sixteen",
    "seventeen",
    "eighteen",
    "nineteen"
    ]

tens = 
[
    "",
    "twenty",
    "thirty",
    "forty",
    "fifty",
    "sixty",
    "seventy",
    "eighty",
    "ninety"
]

hundreds =
[
    "one hundred"
    "two hundred"
    "three hundred"
    "four hundred"
    "five hundred"
    "six hundred"
    "seven hundred"
    "eight hundred"
    "nine hundred"
]

number_words = String[]
# 1 to 10
for i in 1:11
    push!(number_words, starting_nums[i])
end

# 11 to 19
for i in 1:9
    push!(number_words, teen_nums[i])
end

# 20 to 99
for i in 2:9
    for j in 1:10
        if j == 1
            push!(number_words, "$(tens[i])$(starting_nums[j])")
        else
            push!(number_words, "$(tens[i])-$(starting_nums[j])")
        end
    end
end

# 100 to 999
for i in 1:9
    for j in 1:100
        if j == 1
            push!(number_words, "$(hundreds[i])")
        else
            push!(number_words, "$(hundreds[i]) and $(number_words[j])")
        end
    end
end

# 1000
push!(number_words, "one thousand")
number_words = number_words[2:1001]

# Get lengths of each element and sum
total_length = 0
for i in 1:length(number_words)
    current_length = length(replace(number_words[i], r" |-" => ""))
    total_length += current_length
end

println("The cumulative length of all numbers from 1 to 1000 in words is $total_length")
