class Anagram
  attr_reader :result

  def initialize(file_name)
    @file = File.open(file_name)
  end

  def encode_file
    encoded = []
    @file.each do |word|
      encoded << word.encode('UTF-8', 'binary', invalid: :replace, undef: :replace, replace: '')
    end
    encoded
  end

  def find_anagrams
    @result = Hash.new { |hash, key| hash[key] = [] }

    encode_file.each do |word|
      letters_sorted = word.downcase.chars.sort.join

      @result[letters_sorted] << word.chomp
    end

    @result
  end

  def count_anagrams
    find_anagrams
    counter = 0
    @result.each do |k, v|
      if v.length > 1
        counter += 1
      end
    end
    counter
  end

  def show_anagram
    @result.each do |k, v|
      puts v.join(", ") if v.length>1
    end
  end

end
