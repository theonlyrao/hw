require 'minitest/autorun'
require 'minitest/pride'
require '../lib/list'

class ListTest < Minitest::Test
  def test_a_new_list_exists_when_created
    list = List.new("dee")

    assert_equal List, list.class
  end

  def test_passing_a_one_word_string_creates_multiple_nodes
    list = List.new("dee")

    list_head = list.head

    assert_equal list_head.data, "dee"
    assert_equal list_head.link, nil

  end

  def test_find_returns_the_data_of_node_at_position_in_arg
    skip
    list = List.new
    target = Node.new("target")
    node1 = Node.new("node1")
    node2 = Node.new("node2")
    node3 = Node.new("node3")

    list.append(node3)
    list.append(target)
    list.append(node2)
    list.append(node1)

    assert_equal "target", list.find(2)
  end

  def test_append_adds_new_node_to_last_position_in_list
    skip
    list = List.new
    new_node = Node.new("new node")
    node2 = Node.new("node2", nil)
    node1 = Node.new("node1", node2)
    node0 = Node.new("node0", node1)

    list.append(new_node)

    assert_equal node2.link, new_node
    assert_equal new_node.link, nil
  end

  def test_count_returns_the_number_of_nodes_in_list
    skip
    list = List.new
    node1 = Node.new("node1")
    node2 = Node.new("node2")
    node3 = Node.new("node3")

    list.append(node3)
    list.append(node2)
    list.append(node1)

    assert_equal 3, list.count
  end

end
