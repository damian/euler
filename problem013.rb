
def problem13 
  total = 0
  File.open("utility_files/problem13.txt") do |file|
    while line = file.gets
      total+=line.to_i
    end
  end
  total.to_s.slice(0,10)
end

puts "Answer = #{problem13}"



