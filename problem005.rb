
def problem5
  smallest=0
    2520.step(1000000000,2520) {|i| divideByRange(i) && smallest==0 ? smallest = i : next }
  smallest
end




def divideByRange(n)
  counter=0
  for i in 1...20
    if n%i==0
      counter+=1
    end
  end
  return counter==19
end

puts "Answer = #{problem5}"

