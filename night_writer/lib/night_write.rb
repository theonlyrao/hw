require 'pry'

class NightWriter

  attr_reader :english_array, :etb_hash

  def initialize
    @etb_hash = Hash.new

    @etb_hash["#"] = [".", "0", ".", "0", "0", "0"]
    @etb_hash["0"] = [".", "0", "0", "0", ".", "."]
    @etb_hash["1"] = ["0", ".", ".", ".", ".", "."]
    @etb_hash["2"] = ["0", ".", "0", ".", ".", "."]
    @etb_hash["3"] = ["0", "0", ".", ".", ".", "."]
    @etb_hash["4"] = ["0", "0", ".", "0", ".", "."]
    @etb_hash["5"] = ["0", ".", ".", "0", ".", "."]
    @etb_hash["6"] = ["0", "0", "0", ".", ".", "."]
    @etb_hash["7"] = ["0", "0", "0", "0", ".", "."]
    @etb_hash["8"] = ["0", ".", "0", "0", ".", "."]
    @etb_hash["9"] = [".", "0", "0", ".", ".", "."]
    @etb_hash["a"] = ["0", ".", ".", ".", ".", "."]
    @etb_hash["b"] = ["0", ".", "0", ".", ".", "."]
    @etb_hash["c"] = ["0", "0", ".", ".", ".", "."]
    @etb_hash["d"] = ["0", "0", ".", "0", ".", "."]
    @etb_hash["e"] = ["0", ".", ".", "0", ".", "."]
    @etb_hash["f"] = ["0", "0", "0", ".", ".", "."]
    @etb_hash["g"] = ["0", "0", "0", "0", ".", "."]
    @etb_hash["h"] = ["0", ".", "0", "0", ".", "."]
    @etb_hash["i"] = [".", "0", "0", ".", ".", "."]
    @etb_hash["j"] = [".", "0", "0", "0", ".", "."]
    @etb_hash["k"] = ["0", ".", ".", ".", "0", "."]
    @etb_hash["l"] = ["0", ".", "0", ".", "0", "."]
    @etb_hash["m"] = ["0", "0", ".", ".", "0", "."]
    @etb_hash["n"] = ["0", "0", ".", "0", "0", "."]
    @etb_hash["o"] = ["0", ".", ".", "0", "0", "."]
    @etb_hash["p"] = ["0", "0", "0", ".", "0", "."]
    @etb_hash["q"] = ["0", "0", "0", "0", "0", "."]
    @etb_hash["r"] = ["0", ".", "0", "0", "0", "."]
    @etb_hash["s"] = [".", "0", "0", ".", "0", "."]
    @etb_hash["t"] = [".", "0", "0", "0", "0", "."]
    @etb_hash["u"] = ["0", ".", ".", ".", "0", "0"]
    @etb_hash["v"] = ["0", ".", "0", ".", "0", "0"]
    @etb_hash["w"] = [".", "0", "0", "0", ".", "0"]
    @etb_hash["x"] = ["0", "0", ".", ".", "0", "0"]
    @etb_hash["y"] = ["0", "0", ".", "0", "0", "0"]
    @etb_hash["z"] = ["0", ".", ".", "0", "0", "0"]
    @etb_hash["!"] = [".", ".", "0", "0", "0", "."]
    @etb_hash["'"] = [".", ".", ".", ".", "0", "."]
    @etb_hash[","] = [".", ".", "0", ".", ".", "."]
    @etb_hash["-"] = [".", ".", ".", ".", "0", "0"]
    @etb_hash["."] = [".", ".", "0", "0", ".","0"]
    @etb_hash["?"] = [".", ".", "0", ".", "0", "0"]
    @etb_hash["Capital"] = [".", ".", ".", ".", ".", "0"]
    @etb_hash[" "] = [".", ".", ".", ".", ".", "."]

    # input_file = ARGV[0]
    # @output_file = ARGV[1]
    # @input = File.read(input_file)
    # send_to_translate(@input)
  end

  def send_to_translate(input)
    @english_array = input.split()
    translate(@english_array)
    p "Message has been translated into braille. Please see output file."
  end

  def translate(english_array)
    @braille_arrays = []
    english_array.each do |word|
      @characters = word.chars
      end
      if @characters[0].to_i.to_s == @characters[0]
        @braille_arrays << @etb_hash["#"]
        @characters.each do |char|
          @braille_arrays << @etb_hash[char]
        end
        if @braille_arrays[-1] != @etb_hash["."]
          @braille_arrays << @etb_hash[" "]
        end
        # @braille_arrays.unshift(@etb_hash["#"])
      else
        if @characters.join.capitalize == @characters.join
          @braille_arrays << [".", ".", ".", ".", ".", "0"]
          @characters.each do |char|
            new_char = char.downcase
            @braille_arrays << @etb_hash[new_char]
          end
          if @braille_arrays[-1] != @etb_hash["."]
            @braille_arrays << @etb_hash[" "]
          end
          # @braille_arrays.unshift(@etb_hash["Capital"])
        else
          @characters.each do |char|
            @braille_arrays << @etb_hash[char]
          end
          if @braille_arrays[-1] != @etb_hash["."]
            @braille_arrays << @etb_hash[" "]
          end
        end
      end
    @braille_arrays
    # binding.pry
  end

end

NightWriter.new
