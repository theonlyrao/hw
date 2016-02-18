require 'minitest/autorun'
require 'minitest/pride'
require '../lib/write'

class TestWriteTest < Minitest::Test

  def test_send_to_translate_gives_array_of_words_from_input
    input = "hello World 123 goodbye."
    array = Write.new(input)

    assert_equal ["hello", "World", "123", "goodbye."], array.english_array
  end

  def test_can_translate_an_actual_sentence
    input = "Hi 123 bye."
    napoleon = Write.new(input)

    assert_equal '..0..0...00.0.00..0.000...', napoleon.line1
    assert_equal '..000....0..0.....0..0.000', napoleon.line2
    assert_equal '.0......00..........00...0', napoleon.line3
  end

  def test_can_measure_length_of_a_braille_line
  end

  def test_can_split_a_braille_line_at_80_characters
  end

end
