require 'awesome_print'
# Largest palindrome made from product of three digit numbers
def gcd(x, y)
  (y == 0) ? x : gcd(y, x % y)
end

def lcm(x, y)
  x * y / gcd(x, y)
end

def exec
  limit = 20
  1.upto(limit).inject do |accum, x|
    lcm(accum, x)
  end
end

puts exec