require 'minitest/autorun'
require 'minitest/pride'
require '../lib/node'

class NodeTest < Minitest::Test

  def test_a_new_node_exists_when_created
    node = Node.new("node")

    assert_equal Node, node.class
  end

  def test_a_node_alone_has_link_nil
    node = Node.new("node")

    assert_equal nil, node.link
  end

  def test_data_returns_the_data_of_a_node
    node = Node.new("node")

    assert_equal "node", node.data
  end

end
