require 'pry'
require_relative 'array_creator'

class Read

  def initialize(braille_message)
    @braille_message = braille_message
    translate
  end

  def translate
    @braille_array = ArrayCreator.new(@braille_message)
  end

end
