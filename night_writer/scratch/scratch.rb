require 'pry'

class Scratch

  def initialize
    @line1 = ""
    @line2 = ""
    @line3 = ""
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

  def write_braille(a, b, c, wrap_point)
    @output = ""
    length = a.length
    num_breaks = (length / wrap_point) + 1
    i = 0
    a_array = split_line(a, wrap_point)
    b_array = split_line(b, wrap_point)
    c_array = split_line(c, wrap_point)
    until i >= num_breaks do
      @output += "#{a_array[i]}\n#{b_array[i]}\n#{c_array[i]}\n"
      i += 1
    end
    @output
  end

  def split_line(line, length)
    line.scan(/.{1,#{length}}/)
  end

  def output
    @output
  end

end
