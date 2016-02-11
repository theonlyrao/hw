require 'minitest/autorun'
require 'minitest/pride'
require '../lib/list'
require '../lib/jungle_beat'

class ListTest < Minitest::Test

  def test_creating_a_list_works
    jb = JungleBeat.new("deep dep dep deep")

    assert_equal "deep", jb.head.data
  end

end
