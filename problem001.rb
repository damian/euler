
def problem1(n)
  multiples = Array.new
  1.upto(n-1) {|i| multiples << i if (i%3).zero? || (i%5).zero?} 
  multiples.inject(0) {|sum,m| sum+=m}
end

puts "Answer = #{problem1(1000)}"