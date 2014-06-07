max = 1_000_000

$len_count = {}
$num = 1
$length = 0

def length n
  return 0 if n == 1
  return $len_count[n] if $len_count[n]
  n_next = n.even? ? n / 2 : 3 * n + 1
  $len_count[n] = length(n_next) + 1
  $len_count[n]
end

(1..max).each do |i|
  len_i = length(i)
  if len_i > $length
    $num = i
    $length = len_i
  end
end

puts "#{$num} has length of #{$length}"