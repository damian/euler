
def problem10(max) 
  sieve = []
  for i in 2..max
    sieve[i] = i
  end

  for i in 2..Math.sqrt(max)
    next unless sieve[i]
    (i*i).step(max, i) do |j|
      sieve[j] = nil
    end
  end
  sieve.compact.inject(0) {|sum,j| sum+=j}
end

puts "Answer = #{problem10(2000000)}"
