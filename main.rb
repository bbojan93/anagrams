require './lib/anagrams.rb'

puts "insert a file name"
name = gets.chomp
anagram = Anagram.new(name)

puts "Words that are anagrams within #{name}"
anagram.show_anagram

puts "Anagrams found:"
puts "#{anagram.count_anagrams}"
