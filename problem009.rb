

def problem9
  upper = 1000
  answer = 0
  
  for a in 1..upper
    for b in 1..upper
      if a+b<upper && a<b
        c=upper-(a+b)
        if a+b+c==upper
          if pythaogoreanTriplet(a,b,c)
            answer = a*b*c
            break
          end
        end
      end
    end
  end
  answer
end

def pythaogoreanTriplet(a,b,c)
  a**2+b**2==c**2
end

puts "Answer = #{problem9}"
