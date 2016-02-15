require 'minitest/autorun'
require 'minitest/pride'
require '../lib/night_write'

class NightWriterTest < Minitest::Test

  def test_nightwriter_translates_letters_and_symbols_to_braille
    input = " !',-.?abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
    output = "..............0.0.00000.00000..0.00.0.00000.00000..0.00.0..000000...0...0...00..
..00..0...000...0....0.00.00000.00..0....0.00.00000.00..0.00...0.0......0.......
..0.0...00.000....................0.0.0.0.0.0.0.0.0.0.0000.0000000.0...0...0...0
00..0...00..00..0....0...0..0...0...00..00..0...00..00..0....0...0..0...0....0..
.0...0..0...00..00..0...00......0........0...0..0...00..00..0...00......0...00..
...0...0...0...0...0...0...00..00..00..00..00..00..00..00..00..00..000.000.0.0.0
00..00..0.
.....0...0
00.000.000"
  end

  def test_nightwriter_translates_numbers_to_braille

    input = "test 01234 567.89 test"
    output = "TBD"
  end

end
