require 'pry'

class ArrayCreator

  def initialize(line_of_braille)
    @line_of_braille = line_of_braille
    turn_line_into_three_strings(@line_of_braille)
  end

  def turn_line_into_three_strings(line_of_braille)
    braille_array = line_of_braille.split("\n")
    undo_line_break_nonsense(braille_array)
    make_braille_character_arrays(@string1, @string2, @string3)
  end

  def undo_line_break_nonsense(array)
    max = array.count
    i = 0
    @string1 = ""
    @string2 = ""
    @string3 = ""
    while i < max do
      if i % 3 == 0
        @string1 += array[i]
      elsif i % 3 == 1
        @string2 += array[i]
      else
        @string3 += array[i]
      end
      i += 1
    end
  end

  def make_braille_character_arrays(string1, string2, string3)
    @braille_characters = []
    n = @string1.length # so n-1 = last index value in string
    i = 0
    until i >= n do
      @braille_characters << [string1[i], string1[i+1], string2[i], string2[i+1], string3[i], string3[i+1]]
      i += 2
    end
    @braille_characters
  end

  def string1
    @string1
  end

  def string2
    @string2
  end

  def string3
    @string3
  end

  def braille_characters
    @braille_characters
  end

end
