require 'minitest/autorun'
require 'minitest/pride'
require '../lib/night_write'

class NightWriterTest < Minitest::Test

  def test_send_to_translate_gives_array_of_words_from_input
    skip
    napoleon = NightWriter.new
    input = "hello World 123 goodbye."

    array = napoleon.send_to_translate(input)

    assert_equal ["hello", "World", "123", "goodbye."], napoleon.english_array
  end

  def test_a_regular_word_creates_braille_word_instance
    skip
    napoleon = NightWriter.new
    input = ["hi"]
    d = Dictionary.new

    assert_equal [d.etb["h"], d.etb["i"], d.etb[" "]].join, napoleon.translate(input)
  end

  def test_a_number_element_creates_braille_number_instance_returned_as_string
    napoleon = NightWriter.new
    input = ["123"]
    d = Dictionary.new

    napoleon.translate(input)

    assert_equal ".00.0.00..", napoleon.line1
    assert_equal ".0..0.....", napoleon.line2
    assert_equal "00........", napoleon.line3
  end

  def test_a_capital_word_creates_braille_capital_instance
    skip
    napoleon = NightWriter.new
    input = ["Hi"]
    d = Dictionary.new

    assert_equal [d.etb["Capital"], d.etb["h"], d.etb["i"], d.etb[" "]].join, napoleon.translate(input)
  end

  def test_can_translate_an_actual_sentence
    skip
    napoleon = NightWriter.new
    input = "Hi 123 bye."
    d = Dictionary.new

    capital = d.etb["Capital"]
    h = d.etb["h"]
    i = d.etb["i"]
    space = d.etb[" "]
    pound = d.etb["#"]
    one = d.etb["1"]
    two = d.etb["2"]
    three = d.etb["3"]
    b = d.etb["b"]
    y = d.etb["y"]
    e = d.etb["e"]
    period = d.etb["."]

    assert_equal [capital, h, i, space, pound, one, two, three, space, b, y, e, period].join, napoleon.send_to_translate(input)
  end

  def test_a_braille_instance_gets_split_among_lines_properly
  end

  def test_stringing_braille_instances_together_works
  end

  def test_can_measure_length_of_a_braille_line
  end

  def test_can_split_a_braille_line_at_80_characters
  end

end
