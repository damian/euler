def problem18
  total_array = Array.new
  File.open("utility_files/problem18.txt") do |file|
    while line = file.gets
      row_array = line.split(/ /)
      previous_totals = total_array.dup
      if row_array.length == 1
        total_array[0] = row_array[0].to_i
      else
        for values in 0..row_array.length
          if values==0
            total_array[values]+=row_array[values].to_i
          elsif values == row_array.length-1
            if total_array[values] == nil
              total_array[values] = 0
            end
            total_array[values] = previous_totals[values-1]+row_array[values].to_i
          else
            if previous_totals[values] != nil
              total_array[values] = max((previous_totals[values]+row_array[values].to_i), (previous_totals[values-1]+row_array[values].to_i))
            end
          end
        end
      end
    end
  end
  total_array
end

def max(a,b)
  return a.to_i > b.to_i ? a.to_i : b.to_i
end

puts "Answer = #{problem18.max}"


  
  




  
  
      