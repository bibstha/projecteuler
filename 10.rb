# Find the greatest product of five consecutive digits in the 1000-digit number.
require 'prime'
# product = 1
# 1_999_999.times do |i|
#   # puts i
#   if Prime.prime?(i)
#     product += i if Prime.prime?(i)
#     puts i
#   end
# end
# puts product

prime = Prime::instance

sum = 0
prime.each do |x|
  break if x >= 2_000_000
  sum += x
end
puts sum