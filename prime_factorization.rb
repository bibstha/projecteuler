module Util
  # sieve method
  def self.primes_under number
    return [] if number < 2
    values = (2..number).to_a
    values.each_with_index do |v, i|
      next if v == 0
      values[i+1..-1].each_with_index do |w, j|
        values[i+1+j] = 0 if w % v == 0
      end
    end
    values.delete(0)
    values
  end

  def self.prime_factors number
    primes = primes_under number
    powers = [0] * primes.length
    primes.each_with_index do |p, i|
      while number % p == 0
        powers[i] += 1
        number /= p
      end
    end
    primes.zip(powers).select {|t| t[1] != 0}
  end

  def self.prime_factors_of_factorial_of number
    prime_factors = {}
    2.upto(number).each do |x|
      p prime_factors(x)
      prime_factors(x).each do |y|
        prime, count = y
        prime_factors[prime] ||= 0
        prime_factors[prime] += count
      end
    end
    prime_factors
  end

  def self.big_int_multiply(a, b)
    a = a.to_s.reverse
    b = b.to_s.reverse

    # get columns
    cols = a.chars.each_with_index.map do |char_a, i|
      r = q  = 0
      c = ""
      b.chars.each_with_index.map do |char_b, j|
        int_c = char_b.to_i * char_a.to_i + q
        r = int_c % 10
        q = int_c / 10
        c += r.to_s
      end
      c += q.to_s if q != 0
      c = "0" * i + c
    end

    # p cols
    # add columns
    c = 0
    x = 0.upto(cols.map(&:length).max - 1).map do |i|
      sum = cols.inject(c) do |accum, col|
        accum + col[i].to_i
      end
      c = sum / 10
      (sum % 10).to_s
    end
    x << c if c != 0
    x.join("").reverse
  end
end

# puts Util.prime_factors_of_factorial_of 100
# puts Util.big_int_multiply 1234567890, 123456789123456789
num = 150
# a = 1
# 2.upto(num) do |i|
#   a = Util.big_int_multiply(a, i)
# end
# puts a
# p Util.prime_factors 17
# p Util.primes_under 6

puts (2..num).inject(1) {|a, x| a * x}