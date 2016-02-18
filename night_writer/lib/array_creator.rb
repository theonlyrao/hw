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
  end

  def make_braille_character_arrays(string1, string2, string3)
    @braille_characters = [[string1[0], string1[1], string2[0], string2[1], string3[0], string3[1]]]
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
