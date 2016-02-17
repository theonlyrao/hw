require 'minitest/autorun'
require 'minitest/pride'
require '../lib/cap_word'

class TestCapWordTest < Minitest::Test

  def test_turns_word_into_braille_with_space
    word = CapWord.new("Word")

    assert_equal "...00.0.00..", word.cap_word1
    assert_equal "..00.000.0..", word.cap_word2
    assert_equal ".0.00.0.....", word.cap_word3
  end

  def test_turns_word_into_braille_with_period
    word = CapWord.new("word.")

    assert_equal "...00.0.00..", word.cap_word1
    assert_equal "..00.000.000", word.cap_word2
    assert_equal ".0.00.0....0", word.cap_word3
  end

end
