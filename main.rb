require './lib/anagrams.rb'

puts "insert a file name"
name = gets.chomp
anagram = Anagram.new(name)
anagram.find_anagrams
puts "Anagrams found:"
puts "#{anagram.count_anagrams}"

#anagram.show_anagrams
