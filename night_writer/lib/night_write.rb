require 'pry'

class NightWriter

  attr_reader :english_array, :etb_hash

  def initialize
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
  end

end

NightWriter.new
