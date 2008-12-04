def pow(x,y)
x**y
end

def sumOfSquares(n)
total=0
  for i in 1...n+1
    total+=pow(i,2)
  end
  total
end

def squareOfSum(n)
  total=0
  for i in 1...n+1
    total+=i
  end
  total=pow(total,2)
end

def difference(a,b)
  b-a
end

def problem6(n)
  difference(sumOfSquares(n), squareOfSum(n))
end

puts "Answer = #{problem6(100)}"
    
  
    