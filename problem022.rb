
def makeHash
  hashes = Hash.new
  counter = 1
  ('A'..'Z').each do |i| 
    hashes[i] = counter
    counter+=1
  end
  hashes
end

def problem22
  count = 0
  hash = makeHash
  array = Array.new
  File.open("utility_files/names.txt") do |file|
    while line = file.gets
      array.concat(line.split(/,/).map {|i| i.slice(1,i.length-2)})
    end
    array.sort!
  end
  
  for i in 0..array.length-1
    localCount = array[i].split(//).inject(0) {|sum,j| sum+=hash[j]}
    count+=(localCount*=(i+1))
  end
  count
end

puts "Answer = #{problem22}"
