def permute(word)
  permutations_among(word.to_s.split(//))
end


def permutations_among(letters)
  permutations = []
  if letters.size == 1
    permutations << letters.first
  else
    letters.each_with_index do |letter, i|
      surrounding_letters = letters.dup; surrounding_letters.delete_at(i)
      permutations += permutations_among(surrounding_letters).map {|permutation| letter + permutation }
    end
  end
  permutations
end

def problem24
  permute("0123456789").to_a.fetch(999999)
end

puts "Answer = #{problem24}"