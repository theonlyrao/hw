require 'minitest/autorun'
require 'minitest/pride'
require_relative 'scratch'

class TestScratchTest < Minitest::Test

  def test_prints_three_lines
    scratch = Scratch.new

    line1 = scratch.push_one("firstfirstfir")
    line2 = scratch.push_two("seconseconsec")
    line3 = scratch.push_three("thirdthirdthi")

    scratch.write_braille(line1, line2, line3, 5)

    assert_equal "first\nsecon\nthird\nfirst\nsecon\nthird\nfir\nsec\nthi\n", scratch.output
  end
end
