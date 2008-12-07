# Project Euler - Problem28
# damian.nicholson21@gmail.com

# Top-right = n², Top-left = n²-n+1, Bottom-left = n²-2n+2, Bottom-right = n²-3n+3
# Final quadratic equation = 4n²+6n+6
def equation(n)
  (4*(n**2))-(6*n)+6
end

def problem28
  total = 1
  3.step(1001,2) do |n|
    total += equation(n)
  end
  total
end



puts "Answer = #{problem28}"