
def pow(i,j)
  i**j
end

def problem16(i,j)
  pow(i,j).to_s.split(//).map {|i| i=i.to_i}.inject(0) {|sum,j|sum+=j}
end

puts problem16(2,1000)