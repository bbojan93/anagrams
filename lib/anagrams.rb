class Anagram


  def initialize(file_name)
    @words = check_input_type(file_name)
  end


  def find_anagrams
    grouped = Hash.new { |hash, key| hash[key] = [] }

    @words.each do |word|
      letters_sorted = sort_word(word)

      next if letters_sorted.length < 2

      grouped[letters_sorted] << sanitize(word).chomp
    end
    @result = eliminate_nonanagrams(grouped)
  end

  def count_anagrams
    @result.length
  end

  def show_anagrams
    @result.each do |anagram|
      puts anagram.join(", ")
    end
  end

  private

  def encode_word(word)
    word.encode('UTF-8', 'binary', invalid: :replace, undef: :replace, replace: '')
  end

  def sanitize(word)
    encode_word(word).strip.gsub(/[^a-zA-z]+/, '')
  end

  def sort_word(word)
    sanitize(word).downcase.chars.sort.join
  end

  def eliminate_nonanagrams(grouped)
    anagrams_list = []

    grouped.each do |k, v|
      v = v.uniq
      anagrams_list << v if v.length > 1
    end
    anagrams_list
  end



  def check_input_type(file_name)
    if file_name.kind_of?(Array)
      file_name
    else
      open(file_name)
    end
  end

  def open(file_name)
    File.open(file_name).to_a
  end

end
