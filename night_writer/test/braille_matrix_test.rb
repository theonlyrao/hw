require 'minitest/autorun'
require 'minitest/pride'
require '../lib/night_write'

class BrailleMatrixTest < Minitest::Test

  def test_takes_a_braille_array_and_creates_three_lines
    d = Dictionary.new
    matrix = BrailleMatrix.new(d.etb["n"])

    assert_equal "00", matrix.line1
    assert_equal ".0", matrix.line2
    assert_equal "0.", matrix.line3
  end


end
