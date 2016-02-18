require 'pry'

class EnglishTranslator

  def initialize(array_of_braille_characters)
    @array_of_braille_characters = array_of_braille_characters
    translate_to_english
  end

  def translate_to_english
    if @array_of_braille_characters[0] == [".", ".", ".", ".", ".", "0"]
      "yo".capitalize
    end
  end


end
