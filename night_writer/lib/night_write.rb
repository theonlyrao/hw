require 'pry'

class NightWriter

  def initialize
    @english_to_braille_hash = Hash.new

    @english_to_braille_hash["#"] = ["#", "#", "#", "#", "#", "#"]
    @english_to_braille_hash["0"] = [".", "0", "0", "0", ".", "."]
    @english_to_braille_hash["1"] = ["1", ".", ".", ".", ".", "."]
    @english_to_braille_hash["2"] = ["2", ".", "0", ".", ".", "."]
    @english_to_braille_hash["3"] = ["3", "0", ".", ".", ".", "."]
    @english_to_braille_hash["4"] = ["4", "0", ".", "0", ".", "."]
    @english_to_braille_hash["5"] = ["5", ".", ".", "0", ".", "."]
    @english_to_braille_hash["6"] = ["6", "0", "0", ".", ".", "."]
    @english_to_braille_hash["7"] = ["7", "0", "0", "0", ".", "."]
    @english_to_braille_hash["8"] = ["8", ".", "0", "0", ".", "."]
    @english_to_braille_hash["9"] = ["9", "0", "0", ".", ".", "."]
    @english_to_braille_hash["a"] = ["0", ".", ".", ".", ".", "."]
    @english_to_braille_hash["b"] = [".", "0", ".", "0", "0", "0"]
    @english_to_braille_hash["c"] = [".", "0", "0", "0", ".", "."]
    @english_to_braille_hash["d"] = ["0", ".", ".", ".", ".", "."]
    @english_to_braille_hash["e"] = ["e", "0", ".", "0", "0", "0"]
    @english_to_braille_hash["f"] = [".", "0", "0", "0", ".", "."]
    @english_to_braille_hash["g"] = ["0", ".", ".", ".", ".", "."]
    @english_to_braille_hash["h"] = [".", "0", ".", "0", "0", "0"]
    @english_to_braille_hash["i"] = [".", "0", "0", "0", ".", "."]
    @english_to_braille_hash["j"] = ["0", ".", ".", ".", ".", "."]
    @english_to_braille_hash["k"] = [".", "0", ".", "0", "0", "0"]
    @english_to_braille_hash["l"] = [".", "0", "0", "0", ".", "."]
    @english_to_braille_hash["m"] = ["0", ".", ".", ".", ".", "."]
    @english_to_braille_hash["n"] = [".", "0", ".", "0", "0", "0"]
    @english_to_braille_hash["o"] = [".", "0", "0", "0", ".", "."]
    @english_to_braille_hash["p"] = ["0", ".", ".", ".", ".", "."]
    @english_to_braille_hash["q"] = [".", "0", ".", "0", "0", "0"]
    @english_to_braille_hash["r"] = [".", "0", "0", "0", ".", "."]
    @english_to_braille_hash["s"] = ["s", ".", ".", ".", ".", "."]
    @english_to_braille_hash["t"] = ["t", "0", ".", "0", "0", "0"]
    @english_to_braille_hash["u"] = [".", "0", "0", "0", ".", "."]
    @english_to_braille_hash["v"] = ["0", ".", ".", ".", ".", "."]
    @english_to_braille_hash["w"] = [".", "0", ".", "0", "0", "0"]
    @english_to_braille_hash["x"] = [".", "0", "0", "0", ".", "."]
    @english_to_braille_hash["y"] = ["0", ".", ".", ".", ".", "."]
    @english_to_braille_hash["z"] = ["0", ".", ".", ".", ".", "."]
    @english_to_braille_hash["!"] = ["0", ".", ".", ".", ".", "."]
    @english_to_braille_hash["'"] = [".", "0", ".", "0", "0", "0"]
    @english_to_braille_hash[","] = [".", "0", "0", "0", ".", "."]
    @english_to_braille_hash["-"] = ["0", ".", ".", ".", ".", "."]
    @english_to_braille_hash["."] = ["p", "e", "r", "i", "o","d"]
    @english_to_braille_hash["?"] = ["0", ".", ".", ".", ".", "."]
    @english_to_braille_hash["Capital"] = ["C", "C", "C", "C", "C", "C"]
    @english_to_braille_hash[" "] = ["s", "p", "a", "a", "c", "e"]

    # input_file = ARGV[0]
    # @output_file = ARGV[1]
    # @input = File.read(input_file.chomp)
    # send_to_translate(@input)
    # # File.write(output_file, output_text)
  end

  def send_to_translate(input)
    @english_array = @input.split()
    translate(@english_array)
    p "Message has been translated into braille. Please see output file."
  end

  def translate(array)
    @braille_sentence = []
    @braille_1 = []
    @braille_2 = []
    @braille_3 = []
    @translated_words = array.map do |word|
      if is_number(word)
        number_translator(word)
        @braille_sentence << @braille_numbers
      else
        non_number_translator(word)
        # @braille_sentence << @braille_characters
        @braille_1 << @line_1
        @braille_2 << @line_2
        @braille_2 << @line_2
      end
    end
    # @output_text = @braille_sentence.flatten.join
    output_text(@braille_1, @braille_2, @braille_3)

  end

  def output_text(arg1, arg2, arg3)
    File.write(@output_file, arg1.flatten.join)
    File.write(@output_file, arg2.flatten.join)
    File.write(@output_file, arg3.flatten.join)
  end


  def is_number(word)
    true if word.to_i.to_s == word
  end

  def number_translator(numbers)
    @braille_numbers = []
    numbers.chars.each do |number|
      @braille_numbers << @english_to_braille_hash[number]
    end
    if @braille_numbers[-1] == ["period"]
      @braille_numbers
    else
      @braille_numbers << @english_to_braille_hash[" "]
    end
    @braille_numbers.unshift(@english_to_braille_hash["#"])
  end

  def non_number_translator(letters)
    @braille_characters = []
    if letters == letters.capitalize
      letters.downcase.chars.each do |letter|
        @braille_characters << @english_to_braille_hash[letter]
      end
      @braille_characters.unshift(@english_to_braille_hash["Capital"])
    else
      letters.chars.each do |letter|
        @braille_characters << @english_to_braille_hash[letter]
      end
    end
    if @braille_characters[-1] == ["p", "e", "r", "i", "o","d"] # FIX THIS WHEN ACTUAL VALUE IS PUT IN HASH!
      @braille_characters
    else
      @braille_characters << @english_to_braille_hash[" "]
    end
    @line_1 = []
    @line_2 = []
    @line_3 = []
    @braille_characters.each do |character|
      braille_formatter(character)
      @line_1 << @return_1
      @line_2 << @return_2
      @line_3 << @return_3
    end
  end

  def braille_formatter_1(braille_letter_or_number)
    @return_1 = braille_letter_or_number[0, 1]
  end

  def braille_formatter_2(braille_letter_or_number)
    @return_2 = braille_letter_or_number[2, 3]
  end

  def braille_formatter_3(braille_letter_or_number)
    @return_3 = braille_letter_or_number[4, 5]
  end

end

NightWriter.new
