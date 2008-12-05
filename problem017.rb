@numbers = %w[one two three four five six seven eight nine ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen twenty thirty forty fifty sixty seventy eighty ninety hundred]


def makeHash
  hash = Hash.new
  for i in 0..19
    hash[i+1] = @numbers[i]
  end
  count = 20
  for i in 30..100
    if i%10==0
      hash[i] = @numbers[count]
      count+=1
    end
  end
  hash
end


def intToWord(n)
  numbers = makeHash
  word = ""
  thousands = 0
  hundreds = 0
  tens = 0
  units = 0
  
  if n>=100 && n<1000
    if n%100==0
      hundreds = n/100
      word+= intToWord(hundreds)+numbers[100]
    else
      hundreds = n/100
      word+= intToWord(hundreds)+numbers[100]
      word+= "and"+intToWord(n%100)
    end
  end
  if n>20 && n<100
    tens = n/10
    word += numbers[tens*10]
    if !(n%10==0)
      word += numbers[n%10]
    end
  end
  if n<=20 && n>=1 
    word += numbers[n]
  end
  word
end

def problem17(n)
  word = ""
  for i in 1..n
    word += intToWord(i)
  end
  word
end


puts "Answer = #{problem17(999).length+"onethousand".length}"

  

    