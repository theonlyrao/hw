require 'pry'

class ArrayCreator

  def initialize(line_of_braille)
    @line_of_braille = line_of_braille
    turn_line_into_three_strings(@line_of_braille)
  end

  def turn_line_into_three_strings(line_of_braille)
    braille_array = line_of_braille.split("\n")
    @string1 = braille_array[0]
    @string2 = braille_array[1]
    @string3 = braille_array[2]
    make_braille_character_arrays(@string1, @string2, @string3)
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
