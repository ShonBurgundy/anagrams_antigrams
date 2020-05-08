class Compare
  attr_writer(:word_one, :word_two)
  
  def initialize(word_one,word_two)
    @word_one = word_one.downcase.split('').sort
    @word_two = word_two.downcase.split('').sort
  end

  def anagram
    if @word_one == @word_two# compare two words by individual letter
    end
    return "These are Anagrams!"  
  end  
end  