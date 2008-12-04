def problem12
  y, x, r = 0, 1, 0
  while true
    y += x
    x += 1
    r = 0
    (1..Math.sqrt(y).ceil).each do |z|
        y % z == 0 && r += 2
      end
  break if r > 499
  end
  y
end

puts "Answer = #{problem12}"