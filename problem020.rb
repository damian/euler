def factorial(n)
  return n==1 ? 1 : n*factorial(n-1)
end

def sumOfFactorial(n)
  result = factorial(n).to_s.split(//).map {|i| i = i.to_i}.inject(0) {|sum,i| sum+=i}
end

puts "Answer = #{sumOfFactorial(100)}"