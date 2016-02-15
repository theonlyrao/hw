class FileReader
  def read
    filename = ARGV[0]
    File.read(filename)
  end
end

class NightWriter
  attr_reader :file_reader

  def initialize
    @file_reader = FileReader.new
  end

  def encode_to_braille(input)
    p "here's INPUT taken in, magic happens, and OUTPUT string created."
  end
end

test = NightWriter.new

p test.file_reader.read
