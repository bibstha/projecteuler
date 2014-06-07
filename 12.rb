require 'prime'

factor_count = 0
N = 500
n = 1
primes = Prime.first(400) # this takes the highest amount of time, total program finished in 0.7seconds
while factor_count < N
  factor_count = 1
  n_sum = n * (n + 1) / 2
  n_sqrt = (n_sum ** 0.5).to_i
  n_sum_dup = n_sum
  primes.each do |prime|
    break if prime > n_sqrt
    a = 0
    while n_sum_dup % prime == 0
      n_sum_dup /= prime
      a += 1
    end
    factor_count *= (a + 1)
  end
  n += 1
end
puts "#{n_sum} has #{factor_count} factors"


# # Solution requires 7 seconds
# def factors_length n
#   n_sqrt = (n ** 0.5).to_i
#   cnt = (1..n_sqrt).inject(0) {|cnt, divisor|
#     (n % divisor == 0) ? cnt + 2 : cnt
#   }
#   cnt -= 1 if n_sqrt ** 2 == n
#   cnt
# end

# start = 1
# a = 0
# N = 500
# while (a = factors_length((start+1) * start / 2)) < N
#   start += 1 
# end
# puts "#{(start+1) * start / 2} has #{a}"