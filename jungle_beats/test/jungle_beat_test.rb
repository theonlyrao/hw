require 'minitest/autorun'
require 'minitest/pride'
require '../lib/jungle_beat'

class JungleBeatsTest < Minitest::Test

  def test_jb_creates_a_new_jb
    jb = JungleBeat.new("deep dep dep deep")

    assert_equal JungleBeat, jb.class
  end

  def test_jb_creates_list_of_beats
    jb = JungleBeat.new("deep dep dep deep")

    assert_equal "deep", jb.head
  end

end
