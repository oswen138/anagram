require('pry')

class Anagram

  def initialize (first_word, second_word)
    @first_word = first_word
    @second_word = second_word
  end

  def word_check
    word_1 = @first_word.scan(/[aeiouy]/i)
    word_2 = @second_word.scan(/[aeiouy]/i)

    if word_1 == [] || word_2 == []
      "Your words do not have vowels, not a word"
    else
      anagram_check()
    end
  end

  def anagram_check
    first_word_clear = @first_word.downcase.gsub(/[^a-z]/i, '').split("")
    second_word_clear = @second_word.downcase.gsub(/[^a-z]/i, '').split("")

    if first_word_clear.any? {|letter| second_word_clear.include?(letter)}
      if first_word_clear.sort == second_word_clear.sort
        "Anagram detected!"
      else
        palindrome()
        end
      else
        "Antigram detected!"
      end
    end
  
  def palindrome_check
     first_word_reverse = @first_word.downcase.reverse()
     second_word_reverse = @second_word.reverse()

     if first_word_reverse == @first_word || second_word_reverse == @second_word
       "Palindrome detected!"
     else
       "Not anagrams."
     end
   end
 end

