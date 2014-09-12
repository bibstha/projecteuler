# Counting Sundays

def days year, month
  days = 30 if [4, 6, 9, 11].include? month
  if month == 2
    if year % 4 == 0
      if year % 100 == 0
        if year % 400 == 0
          days = 29
        else
          days = 28
        end
      else
        days = 29
      end
    else
      days = 28
    end
  end
  days ||= 31
end

# return [days, first_day_of_month]
def calendar year, month
  start_year = 1900
  (start_year..year).inject(0) do |fdom, x|
    puts "Computing for #{x}"
    end_month = (x == year) ? month - 1 : 12
    (1..end_month).each do |m|
      fdom += days x, m
      fdom %= 7
    end
    fdom
  end

end

# year_start, month_start, year_end, month_end
def sundays ys, ms, ye, me
  start_year = 1900
  count = 0
  (start_year..ye).inject(0) do |fdom, x|
    end_month = (x == ye) ? me - 1 : 12
    (1..end_month).each do |m|
      if ys <= x and x <= ye
        # puts "Calculating for #{x}, #{m}, #{fdom}"
        if fdom == 6
          count += 1
        end
      end
      fdom += days x, m
      fdom %= 7
    end
    fdom
  end
  count
end


def solve
  # ans 171
  puts sundays(1901, 1, 2001, 1)
end

puts solve