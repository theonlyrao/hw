require 'pry'
require_relative 'line_reducer'

class Night

  def initialize(braille_message)
    @braille_message = braille_message
    translate
  end

  def translate
    @braille_array = ArrayCreator.new(@braille_message)
  end

end
