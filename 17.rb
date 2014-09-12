$a = {
  1 => "one",
  2 => "two",
  3 => "three",
  4 => "four",
  5 => "five",
  6 => "six",
  7 => "seven",
  8 => "eight",
  9 => "nine",
  10 => "ten",
  11 => "eleven",
  12 => "twelve",
  13 => "thirteen",
  14 => "fourteen",
  15 => "fifteen",
  16 => "sixteen",
  17 => "seventeen",
  18 => "eighteen",
  19 => "nineteen",
  20 => "twenty",
  30 => "thirty",
  40 => "forty",
  50 => "fifty",
  60 => "sixty",
  70 => "seventy",
  80 => "eighty",
  90 => "ninety",
  100 => "hundred",
  1000 => "thousand"
}

def in_words num
  ones = num % 10
  tens = (num / 10) % 10
  hundreds = (num / 100) % 10
  thousands = (num / 1000) % 10

  if tens == 1
    word = $a[tens * 10 + ones]
  else
    word = "#{$a[tens * 10]}#{$a[ones]}"
  end

  unless hundreds == 0
    word = (word != "") ? "#{$a[hundreds]}hundredand#{word}" : "#{$a[hundreds]}hundred"
  end

  unless thousands == 0
    word = "#{$a[thousands]}thousand#{word}"
  end

  word
end

def solve
  # (1..1000)
  total = (1..1000).inject(0) do |sum, x|
    sum + in_words(x).size
  end
  puts total
end

solve