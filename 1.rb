def exec
  target = 1000
  limit = target - 1
  (1..limit).inject(0) do |accum, x|
    if x % 3 == 0 || x % 5 == 0
      accum + x 
    else
      accum
    end
  end
end

puts exec