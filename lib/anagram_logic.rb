require('pry')

class Anagram
  attr_accessor(:first_word, :second_word)

  def initialize (first_word, second_word)
    @first_word = remove_s_p(first_word)
    @second_word = remove_s_p(second_word)
  end

  def split_letters(word_choice)
   word_choice.split(" ")
  end

  def anagram_check()
    letter_match = []

     first_word_letters = split_letters(@first_word)
     second_word_letters = split_letters(@second_word)

     if (letter_match.include?(true))
      "false"
     else
      "Antigram detected!"
    end
  end
      
#   def word_check()

#       if (@first_word.include?(/[aeiou]/)) && (@second_word.include?(/[aeiou]/))
#         return "yes, it is a word"
#       else
#         return "no, no word detected"
#       end
#     end

  def case_check()
    if @first_word.downcase.split("").match == @second_word.downcase.split("").match
      return "anagram detected"
    else 
      return "antigram detected"
    end
  end

  def remove_s_p(word_combo)
    return word_combo.downcase.gsub(/[^a-z\s]/i, '') 
  end

# end
end
  
