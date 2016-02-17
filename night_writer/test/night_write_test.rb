require 'minitest/autorun'
require 'minitest/pride'
require '../lib/night_write'

class NightWriterTest < Minitest::Test

  def test_send_to_translate_gives_array_of_words_from_input
    napoleon = NightWriter.new
    input = "hello World 123 goodbye."

    array = napoleon.send_to_translate(input)

    assert_equal ["hello", "World", "123", "goodbye."], napoleon.english_array
  end

  def test_can_translate_an_actual_sentence
    napoleon = NightWriter.new
    input = "Hi 123 bye."

    napoleon.send_to_translate(input)

    assert_equal '..0..0...00.0.00..0.000...', napoleon.line1
    assert_equal '..000....0..0.....0..0.000', napoleon.line2
    assert_equal '.0......00..........00...0', napoleon.line3
  end

  def test_can_measure_length_of_a_braille_line
  end

  def test_can_split_a_braille_line_at_80_characters
  end

end
