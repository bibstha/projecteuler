# Factorial Digit Sum

def fact n
  (1..n).inject(:*)
end

def digit_sum n
  n.to_s.split("").map(&:to_i).inject(:+)
end


def solve
  # Ans: 648
  puts digit_sum(fact(100))
end

puts solve