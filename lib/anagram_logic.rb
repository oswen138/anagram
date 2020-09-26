require('pry')

class Anagram

  def initialize (first_word, second_word)
    @first_word = first_word
    @second_word = second_word
  end

  def anagram_check()
    first_word_clear = @first_word.downcase.gsub(/[^a-z]/i, '').split("")
    second_word_clear = @second_word.downcase.gsub(/[^a-z]/i, '').split("")

    if first_word_clear.any? {|letter| second_word_clear.include?(letter)}
      if first_word_clear.sort == second_word_clear.sort
      "Anagram detected!"
      else
        word_check()
      end
    else
      "Antigram detected!"
    end
  end

  def word_check()
    if (@first_word.match(/[aeiouy]/i) || @second_word.match(/[aeiouy]/i))
      "Your words contain vowels, yes, it is a word"
    else
      "'#{@first_word}' and '#{@second_word}' are not words."
    end
  end

  
end
