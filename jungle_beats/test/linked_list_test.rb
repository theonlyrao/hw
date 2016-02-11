require 'minitest/autorun'
require 'minitest/pride'
require '../lib/linked_list'

class LinkedListTest < Minitest::Test

  def test_beats_turn_into_linked_list
    list = LinkedList.new("bam bop boo")

    assert_equal "bam", list.head.data
  end

end
