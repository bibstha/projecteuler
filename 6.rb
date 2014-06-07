# The sum of the squares of the first ten natural numbers is,

# 12 + 22 + ... + 102 = 385
# The square of the sum of the first ten natural numbers is,

# (1 + 2 + ... + 10)2 = 552 = 3025
# Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.

# Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

limit = 100
sum_of_squares = (1..limit).inject(0) { |res, n| res + n * n }
square_of_sums = (limit * (limit + 1) / 2) ** 2
puts "#{square_of_sums} - #{sum_of_squares} = #{square_of_sums - sum_of_squares}"