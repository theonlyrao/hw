require_relative 'node'
require 'pry'

class List

  attr_reader :head, :tail, :result

  def initialize(beats)
    @head = beats
    @count = 4
  end

  def append(data)
    #get to the tail
    #switch the link in the tail from nil to Node.new(data)
    @tail = @head
    unless @tail.link.nil?
      @tail = @head.link
    end
    @tail = Node.new(data)
  end

  def find(position, num_elements)
    #get to the right position
    #find its data and then the next elements
    result = @head
    position_counter = 0
    while position_counter < position
      result = result.link
      position_counter += 1
    end
    found_nodes = [result.data]
    num_elements.times do
      unless result.link.link.nil?
        found_nodes << result.link.data
        result = result.link
      end
    end
    found_nodes << result.link.data
    found_nodes.join(" ")
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

  def count
    @count
  end

  def all
    self.find(0, @count)
  end

  def prepend(beat)
    @old_head = @head
    @head = Node.new(beat, @old_head)
  end

  def count
    #every time you open a node increment the count until you hit the tail
  end

  def find_tail
  end

end
