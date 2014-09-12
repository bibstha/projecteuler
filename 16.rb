def solve
  powers
end

def powers
  a = (2**1000).to_s
  puts a.split("").map(&:to_i).inject(:+)
end

solve