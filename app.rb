require ('./lib/anagram_logic.rb')

data = Data.new

loop do
  puts('Type a word (or "e" to exit):')
  first_word = gets.chomp
  if first_word == 'e'
    break
  end
  puts("Type second word:")
  second_word = gets.chomp

  if !data.word_check(first_word, second_word)
    puts("error, not a word")
  elsif data.anagram_check
    puts("yes, an anagram it is")
  elsif data.palindrome_check
    puts("palindrome appears")
  else
    puts("neither")
  end
end

