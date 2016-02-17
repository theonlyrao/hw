require_relative 'dictionary'
require_relative 'braille_matrix'
require 'pry'

class Word

  def initialize(word)
    @dictionary = Dictionary.new
    translate_number(word)
  end

  def translate_number(word)
    @braille_word = word.chars.map do |char|
      @dictionary.etb[char]
    end
    format_word(@braille_word)
  end

  def format_word(word)
    if word[-1] != @dictionary.etb["."]
      @braille_word << @dictionary.etb[" "]
    end
    make_matrix(@braille_word)
  end

  def make_matrix(word)
    word_matrix = BrailleMatrix.new(word)
    @word1 = word_matrix.line1
    @word2 = word_matrix.line2
    @word3 = word_matrix.line3
  end

  def braille_word
    @braille_word
  end

  def word1
    @word1
  end

  def word2
    @word2
  end

  def word3
    @word3
  end

end
