require 'pry'
require_relative 'dictionary'

class NightWriter

  attr_reader :english_array, :etb, :line1, :line2, :line3

  def initialize
    # input_file = ARGV[0]
    # @output_file = ARGV[1]
    # @input = File.read(input_file)
    @braille_sentence = []
    # send_to_translate(@input)
  end

  def send_to_translate(input)
    @english_array = input.split()
    translate(@english_array)
    # p "Message has been translated into braille. Please see output file."
  end

  def push_one(braille_line)
    @line1 = braille_line
  end

  def push_two(braille_line)
    @line2 = braille_line
  end

  def push_three(braille_line)
    @line3 = braille_line
  end

  def format_sentence(braille_sentence)
    braille_sentence.join
  end

  def translate(english_array)
    english_array.each do |element|
      if element.to_i.to_s == element # number is working
        @number = Number.new(element)
        push_one(@number.number1)
        push_two(@number.number2)
        push_three(@number.number3)
      elsif element.downcase == element
        @word = Word.new(element)
        push(@word.braille_word)
      else
        @cap_word = CapWord.new(element)
        push(@cap_word.braille_cap_word)
      end
    end
    # format_sentence(@braille_sentence)
    #File.write(@output_file, format_sentence(@braille_sentence))
    @line1
    @line2
    @line3
  end

end

class BrailleMatrix # working

  def initialize(braille_word_or_number)
    @braille_array = braille_word_or_number
    array_to_rows(@braille_array)
  end

  def array_to_rows(array)
    @line1 = ""
    @line2 = ""
    @line3 = ""
    array.each do |character|
      @line1 += character[0..1].join
      @line2 += character[2..3].join
      @line3 += character[4..5].join
    end
  end

  def line1
    @line1
  end

  def line2
    @line2
  end

  def line3
    @line3
  end

end

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
    @word
  end

  def braille_word
    @braille_word
  end

end

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
    @braille_cap_word
  end

  def braille_cap_word
    @braille_cap_word
  end

end

NightWriter.new
