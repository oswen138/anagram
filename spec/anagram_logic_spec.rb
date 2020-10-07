require('anagram_logic')
require('rspec')

describe('Anagram#anagram_logic') do

  it('will inform user that the selected two words are anagrams') do
    word_select = Anagram.new('tar', 'rat')
    expect(word_select.anagram_check()).to(eq("Anagram detected!"))
  end

  it('will inform user that the selected two words is an antigram') do
    word_select = Anagram.new('front','back')
    expect(word_select.anagram_check).to(eq("Antigram detected!"))
  end

  it('will check for vowels to determine whether selected word is actually a word') do
    word_select = Anagram.new('state', 'taste')
    expect(word_select.word_check()).to(eq("Your words contain vowels, yes, it is a word"))
  end

  it('will not account for case differences in selected word') do
    word_select = Anagram.new('elbow', 'Below')
    expect(word_select.anagram_check()).to(eq("Anagram detected!"))
  end

  it('will inform user that the selected words are anagrams') do
    word_select = Anagram.new('George Bush','He bugs Gore')
    expect(word_select.anagram_check()).to(eq("Anagram detected!"))
  end

  it('will check if two words share some letters but are not anagrams') do
    word_select = Anagram.new('front', 'fork')
    expect(word_select.anagram_check()).to(eq("Your words contain vowels, yes, it is a word"))
  end
end


  





