class Scratch

  def initialize
    input_file = ARGV[0]
    output_file = ARGV[1]
    @input = File.read(input_file)
    send_to_translate(@input)
    File.write(output_file, @output_text)
  end

  def send_to_translate(input)
    @output_text = input.chomp + "1"
    @output_text = input.chomp + "2"
    @output_text = input.chomp + "3"
  end

end

Scratch.new
