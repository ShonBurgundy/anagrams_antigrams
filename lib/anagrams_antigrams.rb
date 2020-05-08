class Compare
  attr_writer(:wordOne, :wordTwo)
  
  def initialize(wordOne,wordTwo)
    @wordOne = wordOne.downcase.split('').sort
    @wordTwo = wordTwo.downcase.split('').sort
  end

  def anagram
    if @wordOne == @wordTwo# compare two words by individual letter
    end
    return "These are Anagrams!"  
  end  
end  