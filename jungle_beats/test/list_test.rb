require 'minitest/autorun'
require 'minitest/pride'
require '../lib/list'

class ListTest < Minitest::Test
  def test_list_has_a_head
    node3 = Node.new("bop", nil)
    node2 = Node.new("beep", node3)
    node1 = Node.new("dep", node2)

    list = List.new(node1)

    assert_equal list.head, node1
  end

  def test_prepend_adds_a_beat_to_the_beginning
    node3 = Node.new("bop", nil)
    node2 = Node.new("beep", node3)
    node1 = Node.new("dep", node2)

    list = List.new(node1)

    new_beat = "tee"

    list.prepend(new_beat)

    assert_equal "tee", list.new_head.data
  end

  def test_append_adds_a_beat_to_the_end
    node3 = Node.new("bop", nil)
    node2 = Node.new("beep", node3)
    node1 = Node.new("dep", node2)

    list = List.new(node1)

    new_beat = "deep"

    list.append(new_beat)

    assert_equal "deep", list.new_tail.data
  end
end
