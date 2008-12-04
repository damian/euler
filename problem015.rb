

def fact(n)
  return n==0 ? 1 : n*fact(n-1)
end

def problem15
  fact(40)/(fact(20)*fact(20))
end

puts "Answer = #{problem15}"