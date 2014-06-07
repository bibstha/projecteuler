require 'awesome_print'
require 'prime'
# largest prime factor of 600851475143

def exec
  num = 600851475143
  num = 1234567890123456789012345678901234567890
  Prime.each do |prime|
    puts "#{prime}\t#{num}"
    num /= prime while (num % prime).zero?
    if num <= 1
      return prime
    end
  end
end

puts exec