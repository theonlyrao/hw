require 'pry'
require_relative 'dictionary'

class NightWriter

  attr_reader :english_array, :etb

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

  def push(braille_word_or_number)
    @braille_sentence << braille_word_or_number
  end

  def format_sentence(braille_sentence)
    braille_sentence.join
  end

  def translate(english_array)
    english_array.each do |element|
      if element.to_i.to_s == element
        @number = Number.new(element)
        push(@number.braille_number)
      elsif element.downcase == element
        @word = Word.new(element)
        push(@word.braille_word)
      else
        @cap_word = CapWord.new(element)
        push(@cap_word.braille_cap_word)
      end
    end
    format_sentence(@braille_sentence)
    #File.write(@output_file, format_sentence(@braille_sentence))
  end

end

class Number

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
    @braille_number
  end

  def braille_number
    @braille_number
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
