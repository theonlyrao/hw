require_relative 'node'
require_relative 'linked_list'

class JungleBeat
  attr_reader :tail, :result, :list, :beats

  def initialize(beats)
    @list = LinkedList.new

    if beats.split.count == 1
      @list.push(beats)
    else
      beats.split.each do |beat|
        @list.push(beat)
      end
    end

  end

  def play
    `say -r 500 -v Boing "#{@list}"`
    puts self.count
  end

  def append(data)
    array = data.split()

    @tail = @list.head
    until @tail.link.nil?
      @tail = @list.head.link
    end
    append_count = 0
    array.each do |beat|
      @tail = Node.new(beat)
      append_count += 1
    end
    puts append_count

  end

  def find(position, num_elements)
    result = @list.head
    position_counter = 0
    while position_counter < position
      result = result.link
      position_counter += 1
    end
    @found_nodes = []
    num_elements.times do
      until result.link.nil?
        @found_nodes << result.data
        result = result.link
      end
    end
    @found_nodes << result.data
    @found_nodes.join(" ")
  end

  def all
    self.find(0, self.count)
  end

  def prepend(beats)
   @old_head = @list.head
    split = beats.split()
    prepend_counter = 0

    split.each do |beat|
      @list.head = Node.new(beat, @old_head)
      prepend_counter += 1
    end

    puts prepend_counter
  end

  def count
    @counter = 1
    current_node = @list.head
    while current_node != self.tail_is
      current_node = current_node.link
      @counter += 1
    end
    @counter
  end

  def tail_is
    current_node = @list.head
    until current_node.link.nil?
      current_node = current_node.link
    end
    current_node
  end

  def pop(number)
    popped_nodes = []
    number.times do
      node = self.tail_is
      current_node = @list.head
      until current_node.link == node
        current_node = current_node.link
      end
      current_node.link = nil
      popped_nodes.unshift(node.data)
    end
    popped_nodes.join(" ")
  end

  def include?(beat)
    current_node = @list.head
    while current_node.data != beat
      if current_node.link.nil?
        return false
      else
        current_node = current_node.link
      end
    end
    return true
  end

  def insert(position, beat)
    if position == 0
      self.prepend(beat)
    else
      insertion_point = @list.head
      position_counter = 0
      while position_counter < (position - 1)
        insertion_point = insertion_point.link
        position_counter += 1
      end
      node_to_insert = Node.new(beat, insertion_point.link)
      insertion_point.link = node_to_insert
      self.all
    end
  end

end
