# Amicable numbers
# Let d(n) be defined as the sum of proper divisors of n (numbers less than n which divide evenly into n).
# If d(a) = b and d(b) = a, where a ≠ b, then a and b are an amicable pair and each of a and b are called amicable numbers.

# For example, the proper divisors of 220 are 1, 2, 4, 5, 10, 11, 20, 22, 44, 55 and 110; therefore d(220) = 284. The proper divisors of 284 are 1, 2, 4, 71 and 142; so d(284) = 220.

# Evaluate the sum of all the amicable numbers under 10000.

#SOLUTION
# The algorithm could be made much faster if we store the proper divisors and use it to find
# the proper divisors of the higher number
# Ans: 31626 in 3.0s

def proper_divisors_sum(n)
  return 1 if n == 1
  (1..n/2).select {|x| n % x == 0}.inject(:+)
end

amicable_nums = []
table = {}

(1..9999).each do |x|
  table[x] = proper_divisors_sum(x)
end

table.each do |key, val|
  next if key == val
  unless amicable_nums.include?(key) || amicable_nums.include?(val)
    if key == table[val]
      amicable_nums << key
      amicable_nums << val
    end
  end
end

puts amicable_nums.inject(:+)
