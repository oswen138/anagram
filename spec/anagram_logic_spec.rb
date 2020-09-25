require('anagram_logic')
require('rspec')

class Anagram
  attr_accessor:(:word_1, :word_2)

  def initialize()
    @word_1 = word_1
    @word_2 = word_2
  end

  def split_into_words(input)
    input.split(" ")
  end

  
  def word_length(word)
   if @word_l.size == @word_1.size
    
  end

  def word_join
end

end    

# word.each do ]

#   a="scar"
# b="cars"
# a.size == b.size && a.delete(b).empty?


def split_loop()
  new_array = []
  counter = 0
  array = @string.split(' ')
  array.each do |word|
    if (word == fake_reverse(word))
      new_array.push(word)
      counter += 1
    else 
    end
  end
  puts "Your sentence has #{counter} palindromes"
  puts "Palindromes:#{new_array}"
end

var1.chars.sort.join == var2.chars.sort.join

def anagrams(word, words)
  words.select { |w| w.chars.sort.join == word.chars.sort.join }
end

puts anagrams('abba', ['bbaa', 'ddffgg', 'baab'])  