require('anagram_logic')
require('rspec')

class Anagram
  attr_writer(:phrase)
  attr_reader(:word_array)

  def initialize(phrase)
    @phrase = phrase
    @word_array = {"tar" => "rat", "arc" => "car", "elbow" => "below", "state" => "taste"}
  end
end


  # def word(input)
  #   @phrase = "apple".match

  #  if input =~ /[aeiou]/ && input =~ /[0-9]
  #  puts "#{input} 

