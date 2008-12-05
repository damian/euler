require 'Date'

def problem19
  count = 0
  dateBegin = Date.new(1901, 1, 1)
  dateEnd = Date.new(2000, 12, 31)
  dateBegin.upto(dateEnd) do |date|
    count += date.day==1 && date.wday == 0 ? 1 : 0
  end
  count
end

puts "Answer = #{problem19}"
