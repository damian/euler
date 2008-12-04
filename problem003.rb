def sieve(max)
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
  sieve.compact
end

def problem3(n)
  sieve(Math.sqrt(n).to_i).select {|p| (n%p).zero?}.last
end

puts "Answer = #{problem3(600851475143)}"