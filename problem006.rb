def squared(x)
  x**2
end

def sumOfSquares(n)
  (1..n).to_a.inject(0) {|sum,i| sum += squared(i)}
end

def squareOfSum(n)
  squared((1..n).to_a.inject(0) {|sum, i| sum += i})
end

def problem6(n)
  squareOfSum(n) - sumOfSquares(n)
end

puts "Answer = #{problem6(100)}"


  
    