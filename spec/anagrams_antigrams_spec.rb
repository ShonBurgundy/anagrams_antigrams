require('rspec')
require('pry')
require('anagrams_antigrams')

describe("#Compare") do

  describe("#anagram") do
    it ('returns "These are anagrams" if inputted words match letters') do
      compare = Compare.new("bury","ruby")
      expect(compare.anagram()).to(eq("These are Anagrams!"))
    end
  end
end  

