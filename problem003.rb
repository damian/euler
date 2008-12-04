def sieve(max)
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

def problem3(n)
  factors = Array.new
  primes = sieve(Math.sqrt(n).to_i)#.inject(0) {|result, p| result = p if (p%n).zero?}
  
  for p in primes
    factors << p if (n%p).zero?
  end
  factors.last
end


puts "Answer = #{problem3(600851475143)}"