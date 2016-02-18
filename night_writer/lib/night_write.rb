require 'pry'
require_relative 'dictionary'
require_relative 'braille_matrix'
require_relative 'number'
require_relative 'word'
require_relative 'cap_word'

class NightWriter

  def initialize
    input_file = ARGV[0]
    @output_file = ARGV[1]
    @input = File.read(input_file)
    @line1 = ""
    @line2 = ""
    @line3 = ""
    send_to_translate(@input)
  end

  def send_to_translate(input)
    @english_array = input.split()
    translate(@english_array)
    p "Created #{@output_file.inspect} containing #{@input.length} characters"
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
    write_output(@line1, @line2, @line3)
  end

  def write_output(line1, line2, line3)
    output = File.open(@output_file, 'w') { |f|
      f << "#{line1}\n#{line2}\n#{line3}"
    }
    output.close
  end

  def english_array
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

NightWriter.new
