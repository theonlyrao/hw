require_relative 'dictionary'
require_relative 'braille_matrix'

class Number # working

  def initialize(number)
    @dictionary = Dictionary.new
    translate_number(number)
  end

  def translate_number(number)
    @digits = number.chars.map do |char|
      @dictionary.etb[char]
    end
    @braille_number = @digits.unshift(@dictionary.etb["#"])
    format_number(@braille_number)
  end

  def format_number(number)
    if number[-1] != @dictionary.etb["."]
      @braille_number << @dictionary.etb[" "]
    end
    make_matrix(@braille_number)
  end

  def make_matrix(number)
    number_matrix = BrailleMatrix.new(number)
    @number1 = number_matrix.line1
    @number2 = number_matrix.line2
    @number3 = number_matrix.line3
  end

  def braille_number
    @braille_number
  end

  def number1
    @number1
  end

  def number2
    @number2
  end

  def number3
    @number3
  end

end
