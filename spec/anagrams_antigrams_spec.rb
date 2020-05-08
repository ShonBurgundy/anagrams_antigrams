require('rspec')
require('pry')
require('anagrams_antigrams')

describe("#Compare") do

  describe("#anagram") do
    it ('returns "These are anagrams" if inputted words match letters REGARDLESS of letter casing') do
      compare = Compare.new("Bury","Ruby")
      expect(compare.anagram()).to(eq("These are Anagrams!"))
    end
  
    it ('returns "These are anagrams" if inputted words match letters') do
      compare = Compare.new("bury","ruby")
      expect(compare.anagram()).to(eq("These are Anagrams!"))
    end

    it ('returns "You must input a real word!" if input does not contain a vowel or Y') do
      compare = Compare.new("mwt","plq")
      expect(compare.anagram()).to(eq("You must input a real word!"))
    end

    it ('returns "These are Antigrams" if inputted words do not having matching letters') do
      compare = Compare.new("hi","bye")
      expect(compare.anagram()).to(eq("These are Antigram"))
    end
  end
end  

