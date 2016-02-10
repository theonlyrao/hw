require 'minitest/autorun'
require 'minitest/pride'
require '../lib/list'

class ListTest < Minitest::Test
  def test_a_new_list_exists_when_created
    skip
    list = List.new("dee")

    assert_equal List, list.class
  end

  def test_passing_a_one_word_string_creates_tail
    list = List.new("dee")

    assert_equal list.tail.data, "dee"
    assert_equal list.tail.link, nil
  end

  def test_passing_a_two_word_string_creates_a_tail
    list = List.new("bop beep")

    assert_equal list.tail.data, "bop"
    assert_equal list.tail.link, nil
  end

  def test_string_with_two_words_parsed_into_head_and_tail_nodes
    skip
    list = List.new("deep bop")

    assert_equal list.head.data, "deep"
    assert_equal list.head.link, list.tail

    assert_equal list.tail.data, "bop"
    assert_equal list.tail.link, nil
  end

  def test_find_returns_the_data_of_node_at_position_in_arg
  end

  def test_append_adds_new_node_to_last_position_in_list
  end

  def test_count_returns_the_number_of_nodes_in_list
  end

end
