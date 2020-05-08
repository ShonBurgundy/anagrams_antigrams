class Compare
  attr_writer(:wordOne, :wordTwo)
  
  def initialize(wordOne,wordTwo)
    @wordOne = wordOne.downcase.split('')
    @wordTwo = wordTwo.downcase.split('')
  end

  def anagram
    # compare two words by individual letter
  end  
end  