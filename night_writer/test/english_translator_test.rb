require 'minitest/autorun'
require 'minitest/pride'
require '../lib/english_translator'

class TestEnglishTranslatorTest < Minitest::Test

  def test_when_it_sees_capital_it_makes_the_next_letter_capital
    capital_yo = [[".", ".", ".", ".", ".", "0"], ["0", "0", ".", "0", "0", "0"], ["0", ".", ".", "0", "0", "."]]
    english = EnglishTranslator.new(capital_yo)

    assert_equal "Yo", english.translate_to_english
  end

  def test_when_it_sees_pound_it_makes_the_whole_word_numbers_until_space
    number_45space = [[".", "0", ".", "0", "0", "0"], ["0", "0", ".", "0", ".", "."], ["0", ".", ".", "0", ".", "."], [".", ".", ".", ".", ".", "."]]
    english = EnglishTranslator.new(number_45space)

    assert_equal "45 ", english.translate_to_english

  end

  def test_it_translates_a_word
    yo = [["0", "0", ".", "0", "0", "0"], ["0", ".", ".", "0", "0", "."]]
    english = EnglishTranslator.new(yo)

    assert_equal "yo", english.translate_to_english
  end

end
