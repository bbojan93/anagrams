require './lib/anagrams.rb'

puts "insert a file name"
name = gets.chomp
anagram = Anagram.new(name)
puts "Anagrams found:"
result = anagram.find_anagrams
puts "#{anagram.count_anagrams(result)}"

anagram.show_anagrams(result)
