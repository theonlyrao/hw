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

  def test_list_has_a_head
    node3 = Node.new("bop", nil)
    node2 = Node.new("beep", node3)
    node1 = Node.new("dep", node2)

    list = List.new(node1)

    assert_equal list.head, node1
  end

  def test_tail_is_identified
    node4 = Node.new("la", nil)
    node3 = Node.new("bop", node4)
    node2 = Node.new("beep", node3)
    node1 = Node.new("dep", node2)

    list = List.new(node1)

    assert_equal "la", list.tail_is.data
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
    node4 = Node.new("tee", nil)
    node3 = Node.new("bop", node4)
    node2 = Node.new("beep", node3)
    node1 = Node.new("dep", node2)

    list = List.new(node1)

    assert_equal "dep beep bop tee", list.all
  end

  def test_count_returns_num_nodes_in_list
    node4 = Node.new("tee", nil)
    node3 = Node.new("bop", node4)
    node2 = Node.new("beep", node3)
    node1 = Node.new("dep", node2)

    list = List.new(node1)

    assert_equal 4, list.count
  end

  def test_pop_removes_tails
    node4 = Node.new("tee", nil)
    node3 = Node.new("bop", node4)
    node2 = Node.new("beep", node3)
    node1 = Node.new("dep", node2)

    list = List.new(node1)

    assert_equal "beep bop tee", list.pop(3)
    assert_equal "dep", list.tail_is.data
  end

  def test_include_returns_true_if_beat_is_present
    node4 = Node.new("tee", nil)
    node3 = Node.new("bop", node4)
    node2 = Node.new("beep", node3)
    node1 = Node.new("dep", node2)

    list = List.new(node1)

    assert_equal true, list.include?("tee")
    assert_equal false, list.include?("car")
  end

  def test_insert_puts_beats_at_the_right_spot
    node4 = Node.new("tee", nil)
    node3 = Node.new("bop", node4)
    node2 = Node.new("beep", node3)
    node1 = Node.new("dep", node2)

    list = List.new(node1)

    assert_equal "dep la deep car beep bop tee", list.insert(1, "la deep car")
  end

end
