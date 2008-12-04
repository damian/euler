

def problem14
  array = Array.new
  (1..1000000).each do |x|
    sum = 0
    while x != 1
      sum += 1
      x = (x % 2).zero? ? x / 2 : (3 * x) + 1
    end
    array << sum
  end
  array.index(array.max) + 1
end

puts "Answer = #{problem14}"