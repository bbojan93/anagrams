require './lib/anagrams.rb'

puts "insert a file name"
name = gets.chomp
anagram = Anagram.new(name)
anagram.find_anagrams

puts "Words that are anagrams within #{name}"
anagram.show_anagrams

puts "Anagrams found:"
puts "#{anagram.count_anagrams}"
