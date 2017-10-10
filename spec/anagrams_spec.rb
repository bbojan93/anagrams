require 'anagrams.rb'

describe Anagram do

  describe "#count_anagrams" do
    context "given a file anagrams-wordlist.txt" do
      it "should return 22683 anagrams" do
        anagram = Anagram.new("anagrams-wordlist.txt")
        expect(anagram.count_anagrams).to eql(22683)
      end
    end
  end

end