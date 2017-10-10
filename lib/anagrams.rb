class Anagram
  attr_reader :result

  def initialize(file_name)
    @file = File.open(file_name)
  end

  def find_anagrams
    result = Hash.new { |hash, key| hash[key] = [] }

    @file.each_line do |word|
      letters_sorted = word.downcase.chars.sort.join

      result[letters_sorted] << word.chomp
    end

    result
  end

  def count_anagrams(result)
    counter = 0
    result.each do |k, v|
      if v.length > 1
        counter += 1
      end
    end
    counter
  end

  def show_anagrams(result)
    result.each do |k, v|
      puts v.join(", ") if v.length>1
    end
  end

end
