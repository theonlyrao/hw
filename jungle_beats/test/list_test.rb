require 'minitest/autorun'
require 'minitest/pride'
require '../lib/list'

class ListTest < Minitest::Test
  def test_a_new_list_exists_when_created
    skip
    list = List.new("dee")

    assert_equal List, list.class
  end

  def test_all_returns_all_the_beats
    skip
    list = List.new("deep beep bop")
    list.prepend("dep")

    assert_equal "dep deep beep bop", list.all
  end

  def test_passing_a_one_word_string_creates_tail
    skip
    list = List.new("dee")

    assert_equal "dee", list.tail.data
    assert_equal nil, list.tail.link
  end

  def test_can_find_tail_in_two_beat_string
    skip
    list = List.new("bop beep")

    assert_equal "beep", list.find_tail
  end

  def test_can_find_tail_in_four_beat_string
    list = List.new("deep tee boop bop")

    assert_equal "bop", list.find_tail
  end

  def test_string_with_two_words_creates_a_head
    skip
    list = List.new("deep bop")

    assert_equal "deep", list.head.data
  end

  def test_string_with_two_words_creates_head_with_link_to_second_word
    skip
    list = List.new("tee dep")

    assert_equal "tee", list.head
  end

  def test_find_returns_the_data_of_node_at_positions
    skip
    list = List.new("tee deep dep dep bop boop deep")

    assert_equal "dep dep bop", list.find(2, 3)
  end

  def test_find_returns_sorry_when_string_too_short
    skip
    list = List.new("tee deep dep dep bop boop deep")

    assert_equal "Sorry, not enough beats.", list.find(6, 3)
    assert_equal "Sorry, not enough beats.", list.find(5, 3)
  end

  def test_append_adds_new_node_to_last_position_in_list
  end

  def test_count_returns_the_number_of_nodes_in_list
  end

  def test_prepend_adds_a_node_to_the_front
    skip
    list = List.new("deep dop")

    assert_equal "tee deep dop", list.prepend("tee")
  end
end
