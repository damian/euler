def problem1(n)
  (1..(n-1)).select {|i| (i%3).zero? || (i%5).zero?}.inject(0) {|sum,j|sum+=j}
end

puts "Answer = #{problem1(1000)}"