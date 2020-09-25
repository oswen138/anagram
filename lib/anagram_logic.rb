require('pry')


describe('Anagram#anagram_logic') do
  it('will inform user that the selected two words are anagrams') do
    word_select = Anagram.new('tar','rat')
    expect(word_select.Anagram).to(eq("Anagram check: True"))
  end

  it('will inform user that the selected two words are not anagrams') do
    word_select = Anagram.new('dinosaur','rat')
    expect(word_select.Anagram).to(eq("Anagram check: False"))
  end

  it('will not account for case differences in selected word') do
    word_select = Anagram.new('elbow','Below')
    expect(word_select.Anagram).to(eq("Anagram check: True"))
  end

  it('will check for vowels to determine whether selected word is actually a word') do
    word_select = Anagram.new('state', 'ttsea')
    expect(word_select.Anagram).to(eq("Invalid vowel combo detected, not a word."))
  end

  it('will inform user that the selected two words is an antigram') do
    word_select = Anagram.new('front','back')
    expect(word_select.Anagram).to(eq("Antigram detected!"))
  end

  it('will inform user that the selected words are anagrams') do
    word_select = Anagram.new('George Bush','He bugs Gore')
    expect(word_select.Anagram).to(eq("Anagrams detected!"))
  end
  
  it('will inform user that the selected words are antigrams') do
    word_select = Anagram.new('Will Smith','Robert De Niro')
    expect(word_select.Anagram).to(eq("Antigrams detected!"))
  end
end
  
