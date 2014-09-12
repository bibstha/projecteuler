# Maximum path sum II
def initial_triangle
  tri = File.read("67-input.txt")
  tri.each_line.map do |x|
    x.split(" ").map(&:to_i)
  end
end

def calc
  a = initial_triangle.reverse
  a.each_with_index do |x, j|
    (0..x.length-2).each do |i|
      a[j+1][i] += x[i,2].max
    end
  end

  a.last[0]
end

puts calc