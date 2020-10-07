require ('./lib/anagram_logic.rb')

puts "Type a word"
first_word = gets.chomp
puts "Type a second word"
second_word = gets.chomp
word_both = Anagram.new()
puts word_both.anagram_check(first_word, second_word)


