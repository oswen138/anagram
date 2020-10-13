require ('./lib/anagram_logic.rb')


puts 'Welcome to Anagrams!'
puts 'This program helps you determine if given words or phrases are anagrams or not.'
puts 'Word/phrase no. 1:'
input1 = gets.chomp
puts 'Word/phrase no. 2:'
input2 = gets.chomp

words = Anagram.new(first_word, second_word)
puts words.word_check()