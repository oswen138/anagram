require('pry')

class Anagram
  attr_accessor(:first_word, :second_word)

  def initialize (first_word, second_word)
    @first_word = first_word
    @second_word = second_word
  end

  def anagram_check()

      return true if first_word.length == second_word.length
    
      ('a'..'z').each do |char|
        return false unless first_word.count(char) == second_word.count(char)
      end
    
      true
    end
  
  def word_check()

      if (@first_word.include?(/[aeiou]/)) && (@second_word.include?(/[aeiou]/))
        yes, it is a word
      else
        no, no word detected
      end
    end

  def case_check()
    if @first_word.downcase.split("").match == @second_word.downcase.split("").match
      anagram detected
    else 
      antigram detected
    end
  end

  def antigram_check()
    if /[(#{@first_word}")/.match("#{@second_word}")
      no antigram detected
    else
      antigram detected
    end
  end