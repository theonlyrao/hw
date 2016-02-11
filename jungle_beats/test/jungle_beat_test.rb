require 'minitest/autorun'
require 'minitest/pride'
require '../lib/jungle_beat'

class JungleBeatTest < Minitest::Test

  def test_jb_has_a_head
    jb = JungleBeat.new("bom deep dap")

    assert_equal "bom", @list.data
  end

end
