class Compare
  attr_writer(:word_one, :word_two)
  
  def initialize(word_one,word_two)
    @word_one = word_one.downcase
    @word_two = word_two.downcase
  end

def anagram
  if @word_one && @word_two.empty?
    if palindrome?()
        return "This is a Palindrome!"
    else
      return "This is not a Palindrome!"
    end
  end

  @word_one = format(@word_one)
  @word_two = format(@word_two)

  if !(isword(@word_one) && isword(@word_two))  
    return "You must input a real word!"
  elsif @word_one == @word_two
    return "These are Anagrams!"
  else
    return "These are Antigrams!"  
  end 
end

  def palindrome?
    warn @word_one
    warn @word_one.reverse
    return @word_one == @word_one.reverse
  end

  def format(word)
    return word.split('').sort
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