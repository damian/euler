#Iterative fibonacci function - more efficient
def fibo(n)
  sum = 0
  fibonacci = 1
  old = 0
  old1 = 1
  while fibonacci < n
    fibonacci = old + old1
    old = old1
    old1 = fibonacci
    sum+=fibonacci if isEven(fibonacci)
  end
  sum
end

def isEven(i)
  return i%2==0
end

puts "Answer = #{fibo(4000000)}"