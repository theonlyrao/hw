require_relative 'dictionary'
require_relative 'braille_matrix'

class CapWord

  def initialize(cap_word)
    @dictionary = Dictionary.new
    translate_number(cap_word)
  end

  def translate_number(cap_word)
    @letters = cap_word.downcase.chars.map do |char|
      @dictionary.etb[char]
    end
    @braille_cap_word = @letters.unshift(@dictionary.etb["Capital"])
    format_number(@braille_cap_word)
  end

  def format_number(word)
    if word[-1] != @dictionary.etb["."]
      @braille_cap_word << @dictionary.etb[" "]
    end
    make_matrix(@braille_cap_word)
  end

  def make_matrix(cap_word)
    cap_word_matrix = BrailleMatrix.new(cap_word)
    @cap_word1 = cap_word_matrix.line1
    @cap_word2 = cap_word_matrix.line2
    @cap_word3 = cap_word_matrix.line3
  end

  def braille_cap_word
    @braille_cap_word
  end

  def cap_word1
    @cap_word1
  end

  def cap_word2
    @cap_word2
  end

  def cap_word3
    @cap_word3
  end

end
