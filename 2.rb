require 'awesome_print'
def exec
  # limit = 4000000
  limit = 34
  a = 1; b = 2; sum = 2
  while b <= limit
    c = a + b
    sum += c if c % 2 == 0
    a = b; b = c
  end
  sum
end

puts exec