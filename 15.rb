# Works for smaller (< 14,14), but expands exponentially
# so not possible for 20
# wolfram alpha says the sequence is a binomial(2n, n)
# given n = 20, binomial(2n,n) = 137846528820

# try 2 with cache
$cache = {}

def count r, c
  # a = (r > c) ? [c, r] : [r, c]
  a = [r, c]
  if $cache.include? a
    return $cache[a]
  end

  if r == 0 and c == 0
    return 1
  end

  r_c = c_c = 0
  if r > 0
    r_c = count r-1, c
  end

  if c > 0
    c_c = count r, c - 1
  end

  # p "#{a}, #{r_c}, #{c_c}"
  $cache[a] = r_c + c_c
  return r_c + c_c
end

def ways
  puts count(20,20)
end

def solve
  ways
end

solve
