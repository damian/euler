
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

def problem23
  abs = (1..28123).select {|i| sumOfFacs(i) > i}
  sums = Hash.new
  until abs.empty?
    i = abs.shift
    sums[i*2] = 1
    abs.each do |j|
      total = i+j
      break if total > 238123
      sums[total] = 1
    end
  end
  
  ((1..28123).to_a - sums.keys).inject(0) {|s,i| s+=i}
end

puts "Answer = #{problem23}"






