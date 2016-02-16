require 'minitest/autorun'
require 'minitest/pride'
require '../lib/night_write'

class NightWriterTest < Minitest::Test

  def test_braille_formatter_returns_three_lines_of_text
    test = NightWriter.new

    letter = ["a", "b", "c", "d", "e", "f"]

    line_1 = ["a", "b"]
    line_2 = ["c", "d"]
    line_3 = ["e", "f"]

    assert_equal line_1 && line_2 && line_3, test.braille_formatter(letter)
  end

  def test_non_number_translator_returns_three_lines_of_braille
    test = NightWriter.new

    letters = "H"

    line_1 = [".", "0"]
    line_2 = [".", "0"]
    line_3 = ["0", "0"]

    assert_equal line_1 && line_2 && line_3, test.non_number_translator(letters)
  end
end
