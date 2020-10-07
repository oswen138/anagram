require('anagram_logic')
require('rspec')

describe('Anagram#anagram_logic') do

  it('will check for vowels to determine whether selected word is actually a word') do
    word_select = Anagram.new('jkikk', 'kkkk')
    expect(word_select.word_check()).to(eq("Your words do not have vowels, not a word"))
  end

  it('will inform user that the selected two words are anagrams') do
    word_select = Anagram.new('tar', 'rat')
    expect(word_select.anagram_check()).to(eq("Anagram detected!"))
  end

  it('will inform user that the selected two words are antigrams') do
    word_select = Anagram.new('if', 'apple')
    expect(word_select.anagram_check()).to(eq("Antigram detected!"))
  end

  it('will check if two words share some letters but are not anagrams') do
    word_select = Anagram.new('front', 'fork')
    expect(word_select.palindrome_check()).to(eq("Not anagrams."))
  end

  it('will check if two words share some letters but are not anagrams') do
    word_select = Anagram.new('level', 'moon')
    expect(word_select.palindrome_check()).to(eq("Palindrome detected!"))
  end

  it('will not account for case differences in selected word') do
    word_select = Anagram.new('elbow', 'Below')
    expect(word_select.anagram_check()).to(eq("Anagram detected!"))
  end

  it('will inform user that the selected words are anagrams') do
    word_select = Anagram.new('George Bush','He bugs Gore')
    expect(word_select.anagram_check()).to(eq("Anagram detected!"))
  end
end


  





