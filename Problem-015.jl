
# For a 2x2 grid we have 4 total moves, 2 rights and 2 downs.
# Thus the problem can be thought of as the number of ways to select 2 right moves out of 4 total moves.
# Therefore for a 2x2 grid the answer is:
binomial(4,2)

# For a 20x20 grid we have 40 total moves, 20 of which are right.
# Thus we need to find all the ways of selecting 20 right moves out of 40 total moves.
# The answer to this is found as follows:
answer = binomial(40,20)

println("For a 20x20 grid, when it is only possible to move right and down, there are $answer routes to the bottom right corner.")

