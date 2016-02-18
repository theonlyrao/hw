require 'pry'
require_relative 'dictionary'

class EnglishTranslator

  def initialize(array_of_braille_characters)
    @d = Dictionary.new
    @array_of_braille_characters = array_of_braille_characters
    translate_to_english
  end

  def translate_to_english
    @english = ""
    n = @array_of_braille_characters.count
    i = 0
    until i >= n do
      if @array_of_braille_characters[i] == [".", ".", ".", ".", ".", "0"] # capital
        capital = @d.bte_others[@array_of_braille_characters[i + 1]].upcase
        @english += capital
        i += 2
      elsif @array_of_braille_characters[i] == [".", "0", ".", "0", "0", "0"] # pound
        until @array_of_braille_characters[i] == [".", ".", ".", ".", ".", "."]
          number = @d.bte_numbers[@array_of_braille_characters[i]]
          @english += number
          i += 1
        end
      else
        letter = @d.bte_others[@array_of_braille_characters[i]]
        @english += letter
        i += 1
      end
    end
    @english
  end

  def english
    @english
  end


end
