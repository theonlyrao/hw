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

    assert_equal "tee", list.head.data
  end

  def test_append_adds_a_beat_to_the_end
    node3 = Node.new("bop", nil)
    node2 = Node.new("beep", node3)
    node1 = Node.new("dep", node2)

    list = List.new(node1)

    new_beat = "deep"

    list.append(new_beat)

    assert_equal "deep", list.tail.data
  end

  def test_find_returns_data_at_position_and_num_of_subsequent
    node4 = Node.new("tee", nil)
    node3 = Node.new("bop", node4)
    node2 = Node.new("beep", node3)
    node1 = Node.new("dep", node2)

    list = List.new(node1)

    assert_equal "beep bop tee", list.find(1, 3)
  end

  def test_all_returns_all_data
    skip
    node4 = Node.new("tee", nil)
    node3 = Node.new("bop", node4)
    node2 = Node.new("beep", node3)
    node1 = Node.new("dep", node2)

    list = List.new(node1)

    assert_equal "dep beep bop tee", list.all
  end

  def test_count_returns_num_nodes_in_list
    skip
    node4 = Node.new("tee", nil)
    node3 = Node.new("bop", node4)
    node2 = Node.new("beep", node3)
    node1 = Node.new("dep", node2)

    list = List.new(node1)

    assert_equal 4, list.count
  end
end
