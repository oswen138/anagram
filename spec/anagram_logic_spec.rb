require('anagram_logic')
require('rspec')

class Anagram

  attr_accessor :first_word, :second_word

  def initialize(first_word, second_word)
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
  end