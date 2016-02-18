require 'pry'

class BrailleMatrix

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
