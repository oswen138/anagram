require('pry')

describe ('Anagram#anagram_logic') do
  it('initializes phrase') do
    test = Anagram.new(tar)
    expect(test.phrase).to(eq(tar))
  end
end