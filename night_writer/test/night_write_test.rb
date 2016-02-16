require 'minitest/autorun'
require 'minitest/pride'
require '../lib/night_write'

class NightWriterTest < Minitest::Test

  def test_send_to_translate_gives_array_of_words_from_input
    test = NightWriter.new
    input = "hello World 123 goodbye."

    array = test.send_to_translate(input)

    assert_equal ["hello", "World", "123", "goodbye."], array
  end

  def test_translate_of_numbers_in_middle_gives_braille_array
    test = NightWriter.new
    input = ["123"]

    pound = [".", "0", ".", "0", "0", "0"]
    one = ["0", ".", ".", ".", ".", "."]
    two = ["0", ".", "0", ".", ".", "."]
    three = ["0", "0", ".", ".", ".", "."]
    space = [".", ".", ".", ".", ".", "."]

    braille_input = test.translate(input)

    assert_equal [pound, one, two, three, space], braille_input
  end

  def test_translate_of_lowercase_in_middle_gives_braille_array
    test = NightWriter.new
    input = ["hi"]

    braille_input = test.translate(input)

    h = ["0", ".", "0", "0", ".", "."]
    i = [".", "0", "0", ".", ".", "."]
    space = [".", ".", ".", ".", ".", "."]

    assert_equal [h, i, space], braille_input
  end

  def test_translate_of_capital_in_middle_gives_braille_array
    test = NightWriter.new
    input = ["Hi"]

    braille_input = test.translate(input)

    capital = [".", ".", ".", ".", ".", "0"]
    h = ["0", ".", "0", "0", ".", "."]
    i = [".", "0", "0", ".", ".", "."]
    space = [".", ".", ".", ".", ".", "."]

    assert_equal [capital, h, i, space], braille_input
  end

  def test_translate_of_numbers_at_end_gives_braille_array
    test = NightWriter.new
    input = ["123."]

    pound = [".", "0", ".", "0", "0", "0"]
    one = ["0", ".", ".", ".", ".", "."]
    two = ["0", ".", "0", ".", ".", "."]
    three = ["0", "0", ".", ".", ".", "."]
    period = [".", ".", "0", "0", ".","0"]

    braille_input = test.translate(input)

    assert_equal [pound, one, two, three, period], braille_input
  end

  def test_translate_of_lowercase_at_end_gives_braille_array
    test = NightWriter.new
    input = ["hi."]

    braille_input = test.translate(input)

    h = ["0", ".", "0", "0", ".", "."]
    i = [".", "0", "0", ".", ".", "."]
    period = [".", ".", "0", "0", ".","0"]

    assert_equal [h, i, period], braille_input
  end

  def test_translate_of_capital_at_end_gives_braille_array
    test = NightWriter.new
    input = ["Hi."]

    braille_input = test.translate(input)

    capital = [".", ".", ".", ".", ".", "0"]
    h = ["0", ".", "0", "0", ".", "."]
    i = [".", "0", "0", ".", ".", "."]
    period = [".", ".", "0", "0", ".","0"]

    assert_equal [capital, h, i, period], braille_input
  end

  def test_translate_all_options_together
    test = NightWriter.new
    input = ["Hi 123 I."]

    braille_input = test.translate(input)

    capital = [".", ".", ".", ".", ".", "0"]
    h = ["0", ".", "0", "0", ".", "."]
    i = [".", "0", "0", ".", ".", "."]
    space = [".", ".", ".", ".", ".", "."]
    pound = [".", "0", ".", "0", "0", "0"]
    one = ["0", ".", ".", ".", ".", "."]
    two = ["0", ".", "0", ".", ".", "."]
    three = ["0", "0", ".", ".", ".", "."]
    period = [".", ".", "0", "0", ".","0"]

    assert_equal [capital, h, i, space, pound, one, two, three, period, capital, i], braille_input
  end

  def test_braille_formatter_returns_three_lines_per_char
    test = NightWriter.new

    word = ["h"]

    array = translate(word)
  end

  def test_braille_joiner_creates_three_strings_from_multiple_chars
    test = NightWriter.new

    word = ["hi"]

    array = translate(word)
  end

end
