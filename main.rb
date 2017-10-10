require './lib/anagrams.rb'

puts "insert a file name"
name = gets.chomp
anagram = Anagram.new(name)

puts "Anagrams found:"
puts "#{anagram.count_anagrams}"

anagram.show_anagram
