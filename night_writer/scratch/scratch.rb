class Scratch

  def initialize
    input_file = ARGV[0]
    @output_file = ARGV[1]
    @input = File.read(input_file)
    send_to_translate(@input)
  end

  def send_to_translate(input)
    File.open(@output_file, "a+") { |f|
      f << input.chomp + "1\n"
      f << input.chomp + "2\n"
      f << input.chomp + "3\n"
    }
  end

end

Scratch.new
