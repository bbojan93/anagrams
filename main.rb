require './lib/anagrams.rb'

puts "insert a file name"
name = gets.chomp
anagram = Anagram.new(name)
puts "number of possible anagrams is:"
puts "#{anagram.count_anagrams(anagram.find_anagrams)}"
