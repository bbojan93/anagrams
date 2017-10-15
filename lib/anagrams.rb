class Anagram


  def initialize(file_name)
    @file = File.open(file_name).to_a
  end


  def find_anagrams
    result = Hash.new { |hash, key| hash[key] = [] }

    @file.each do |word|
      letters_sorted = sort_word(word)

      result[letters_sorted] << word.chomp
    end

    result
  end

  def encode_word(word)
    word.encode('UTF-8', 'binary', invalid: :replace, undef: :replace, replace: '')
  end

  def sort_word(word)
    encode_word(word).downcase.chars.sort.join
  end

  def count_anagrams
    counter = 0
    find_anagrams.each do |k, v|
      if v.length > 1
        counter += 1
      end
    end
    counter
  end

  def show_anagram
    find_anagrams.each do |k, v|
      puts v.join(", ") if v.length>1
    end
  end

end
