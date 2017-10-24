require 'anagrams.rb'

describe Anagram do

  describe "#find_anagrams" do

    context "given an array of words" do
      it "should return anagrams" do
        anagram = Anagram.new(["abc", "cba", "fish"])
        anagram.find_anagrams
        expect(anagram.find_anagrams).to eql([["abc", "cba"]])
      end
    end
  end

  describe "#count_anagrams" do

    context "given a file test.txt" do
      it "should return 4 anagrams" do
        anagram = Anagram.new("test.txt")
        anagram.find_anagrams
        expect(anagram.count_anagrams).to eql(4)
      end
    end

    context "given a file anagrams-wordlist.txt" do
      it "should return 30598 anagrams" do
        anagram = Anagram.new("anagrams-wordlist.txt")
        anagram.find_anagrams
        expect(anagram.count_anagrams).to eql(30317)
      end
    end
  end


end
