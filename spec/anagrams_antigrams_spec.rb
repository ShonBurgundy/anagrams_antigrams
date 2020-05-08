require('rspec')
require('pry')
require('anagrams_antigrams')

describe("#Compare") do

  describe("#initialize") do
    it ('returns input downcased to insure logic is NOT case sensitive') do
      compare = Compare.new("Bury","Ruby")
      expect(compare.downcase()).to(eq("CAPS"))
    end
  end

  describe("#anagram") do
    it ('returns "These are anagrams" if inputted words match letters') do
      compare = Compare.new("bury","ruby")
      expect(compare.anagram()).to(eq("These are Anagrams!"))
    end
  end
end  

