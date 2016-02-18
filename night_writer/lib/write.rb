require 'pry'
require_relative 'dictionary'
require_relative 'braille_matrix'
require_relative 'number'
require_relative 'word'
require_relative 'cap_word'

class Write

  def initialize(english_message)
    @line1 = ""
    @line2 = ""
    @line3 = ""
    @english_message = english_message
    send_to_translate(@english_message)
  end

  def send_to_translate(input)
    @english_array = input.split()
    translate(@english_array)
  end

  def translate(english_array)
    english_array.each do |element|
      if element.to_i.to_s == element
        @number = Number.new(element)
        push_one(@number.number1)
        push_two(@number.number2)
        push_three(@number.number3)
      elsif element.downcase == element
        @word = Word.new(element)
        push_one(@word.word1)
        push_two(@word.word2)
        push_three(@word.word3)
      else
        @cap_word = CapWord.new(element)
        push_one(@cap_word.cap_word1)
        push_two(@cap_word.cap_word2)
        push_three(@cap_word.cap_word3)
      end
    end
  end

  def push_one(braille_line)
    @line1 += braille_line
  end

  def push_two(braille_line)
    @line2 += braille_line
  end

  def push_three(braille_line)
    @line3 += braille_line
  end

  def write_braille
      @line1 + "\n" + @line2 + "\n" + @line3
  end

  def english_array # only exists for testing purposes
    @english_array
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
