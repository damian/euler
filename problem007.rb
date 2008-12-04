def sieve
  max = 1000000
  sieve = []
  for i in 2 .. max
    sieve[i] = i
  end

  for i in 2 .. Math.sqrt(max)
    next unless sieve[i]
    (i*i).step(max, i) do |j|
      sieve[j] = nil
    end
  end
  sieve.compact
end

puts "Answer = #{sieve[10000]}"
