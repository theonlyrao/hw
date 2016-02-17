require 'minitest/autorun'
require 'minitest/pride'
require '../lib/word'

class TestWordTest < Minitest::Test

  def test_turns_word_into_braille_with_space
    word = Word.new("word")

    assert_equal ".00.0.00..", word.word1
    assert_equal "00.000.0..", word.word2
    assert_equal ".00.0.....", word.word3
  end

  def test_turns_word_into_braille_with_period
    word = Word.new("word.")

    assert_equal ".00.0.00..", word.word1
    assert_equal "00.000.000", word.word2
    assert_equal ".00.0....0", word.word3
  end

end
