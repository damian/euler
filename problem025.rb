@fibs = [1,1,2,3,5,8,13]

def nextFib(array, i)
  array[i] = array[i-1]+array[i-2]
  array[i].to_s.length
end

def problem25(array)
  count = array.length
  while nextFib(array,count) < 1000
    count+=1
  end
  count+1
end

puts "Answer = #{problem25(@fibs)}"