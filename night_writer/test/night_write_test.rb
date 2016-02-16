require 'minitest/autorun'
require 'minitest/pride'
require '../lib/night_write'

class NightWriterTest < Minitest::Test

  def test_send_to_translate_gives_array_of_words_from_input
    test = NightWriter.new
    input = "hello World 123 goodbye."

    array = test.send_to_translate(input)

    assert_equal ["hello", "World", "123", "goodbye."], test.english_array
  end

  def test_when_it_sees_a_number_it_inserts_pound
  end

  def test_when_it_sees_two_numbers_it_inserts_only_one_pound
  end

  def test_when_it_sees_a_cap_it_inserts_capital
  end

  def test_when_it_sees_word_with_cap_it_inserts_capital
  end

  def test_when_word_ends_with_punctuation_it_inserts_only_punctuation
  end

  def test_when_word_ends_with_space_it_inserts_space
  end

  def test_it_splits_words_into_three_rows
  end

  def test_it_joins_word_rows_together
  end

  def test_it_counts_length_of_word_row
  end

  def test_it_creates_new_row_if_length_more_than_80
  end

  def test_it_prints_each_row_in_order
  end

end
