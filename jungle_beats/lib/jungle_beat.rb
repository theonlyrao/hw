require_relative 'node'
require_relative 'linked_list'
require 'pry'

class JungleBeat

  attr_reader :tail, :result, :list

  def initialize(beats)
    @list = LinkedList.new(beats)
    binding.pry
  end

  def play
    `say -r 500 -v Boing "#{@list.head}"`
    puts self.count
  end

  def append(data)
    #fix to handle multiple beats to append
    @tail = @list.head
    unless @tail.link.nil?
      @tail = @list.head.link
    end
    @tail = Node.new(data)
  end

  def find(position, num_elements)
    #get to the right position
    #find its data and then the next elements
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

  # def grab_elements(starting_node, num_elements)
  #   #called by find method for List
  #   @elements = [starting_node]
  #   num_elements.times do
  #     @elements << starting_node.link.data
  #     starting_node = starting_node.link
  #   end
  #   @elements.join(" ")
  # end

  def all
    self.find(0, self.count)
  end

  def prepend(beat)
    #fix to handle multiple beats to prepend
    @old_head = @list.head
    @list.head = Node.new(beat, @old_head)
  end

  def count
    #every time you open a node increment the count until you hit the tail
    @counter = 1
    current_node = @list.head
    while current_node != self.tail_is
      current_node = current_node.link
      @counter += 1
    end
    # binding.pry
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
    # if isn't working because need to fix prepend to take multiple beats
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
