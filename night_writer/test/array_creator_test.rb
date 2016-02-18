require 'minitest/autorun'
require 'minitest/pride'
require '../lib/array_creator'

class TestArrayCreatorTest < Minitest::Test

  def test_a_line_of_braille_becomes_three_strings
    line_of_braille = "0..0..\n000...\n......"
    array_creator = ArrayCreator.new(line_of_braille)

    assert_equal "0..0..", array_creator.string1
    assert_equal "000...", array_creator.string2
    assert_equal "......", array_creator.string3
  end

  def test_first_two_chars_on_each_row_become_separate_array
    line_of_braille = "0..0..\n000...\n......"
    array_creator = ArrayCreator.new(line_of_braille)
    array_creator.make_braille_character_arrays(array_creator.string1, array_creator.string2, array_creator.string3)

    assert_equal ["0", ".", "0", "0", ".", "."], array_creator.braille_characters[0]

  end

end
