require 'pry'
require_relative 'array_creator'
require_relative 'english_translator'

class Read

  def initialize(braille_message)
    @braille_message = braille_message
    translate
  end

  def translate
    @braille_array = ArrayCreator.new(@braille_message)
    @translation = EnglishTranslator.new(@braille_array.braille_characters)
    @translation.english
  end

end
