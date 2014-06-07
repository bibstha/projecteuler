require 'awesome_print'
# Largest palindrome made from product of three digit numbers
def gcd(x, y)
  (y == 0) ? x : gcd(y, x % y)
end

puts gcd 6, 9

def lcm(x, y)
  x * y / gcd(x, y)
end

def exec
  
end

# puts exec