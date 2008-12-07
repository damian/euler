#Mega efficient sum of factorials O(√n) complexity
def sumOfFacs(n)
  total = 1
  sqrt = Math.sqrt(n).to_i
  i = 2
  while i <= sqrt
    if n%i == 0
      if n != i*i
        total += n/i
      end
      total += i
    end
    i += 1
  end
  total
end

def problem21
  (1..10000).select { |i| i == sumOfFacs(sumOfFacs(i)) && i != sumOfFacs(i) }.inject(0) { |sum, j| sum += j }
end

puts "Answer = #{problem21}"