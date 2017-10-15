require 'anagrams.rb'

describe Anagram do

  describe "#sort_word" do

    context "given a word listen" do
      it "should return eilnst" do
        expect(Anagram.new("test.txt").sort_word('listen')).to eql('eilnst')
      end
    end
  end

  describe "#count_anagrams" do

    context "given a file test.txt" do
      it "should return 4 anagrams" do
        anagram = Anagram.new("test.txt")
        expect(anagram.count_anagrams).to eql(4)
      end
    end

    context "given a file anagrams-wordlist.txt" do
      it "should return 30598 anagrams" do
        anagram = Anagram.new("anagrams-wordlist.txt")
        expect(anagram.count_anagrams).to eql(30598)
      end
    end
  end


end
