
def palendrome(n)
  n.to_s == n.to_s.reverse
end

def multiply(x,y)
  x.to_i*y.to_i
end

def problem4(n)
  biggest = 10000
  for i in 100..n
    for j in 100..n
      x = multiply(i,j)
      biggest = x if palendrome(x) && x > biggest
    end
  end
  biggest
end

puts "Answer = #{problem4(999)}"
