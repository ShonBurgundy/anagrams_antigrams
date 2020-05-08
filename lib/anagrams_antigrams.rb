class Compare
  attr_writer(:word_one, :word_two)
  
  def initialize(word_one,word_two)
    @word_one = word_one.downcase.split('').sort
    @word_two = word_two.downcase.split('').sort
  end

  def anagram
    if !(isword(@word_one) && isword(@word_two))  
      return "You must input a real word!"
    elsif @word_one == @word_two
      return "These are Anagrams!"
    elsif palindrome?() == true
      return "This a Palindrome!"
    else
      return "These are Antigrams!"  
    end 
  end

  def palindrome?
    if @word_one == @word_one.reverse
      return true
    else
      return "These are not Palindromes!"
    end
  end


  def isword(word)
    if !word
      return false
    end
    vowels_in_word = word & ["a", "e", "i", "o", "u", "y"]
    if vowels_in_word.empty?
      return false
    else
      return true
    end  
  end  
end