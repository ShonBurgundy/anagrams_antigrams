require('rspec')
require('pry')
require('anagrams_antigrams')

describe("#Compare") do

  describe("#anagram") do
    it ('returns "These are anagrams" if inputted words match letters') do
      compare = Compare.new()
      expect(compare.anagram("bury","ruby")).to(eq("These are anagrams!"))
    end
  end
end  

