require 'minitest/autorun'
require 'minitest/pride'
require '../lib/number'

class TestNumberTest < Minitest::Test

  def test_turns_number_into_braille_with_space
    number = Number.new("32")

    assert_equal ".0000...", number.number1
    assert_equal ".0..0...", number.number2
    assert_equal "00......", number.number3
  end

  def test_turns_number_into_braille_with_period
    number = Number.new("32.")

    assert_equal ".0000...", number.number1
    assert_equal ".0..0.00", number.number2
    assert_equal "00.....0", number.number3
  end

end
