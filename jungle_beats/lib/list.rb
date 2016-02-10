require_relative 'node'
require 'pry'

class List

  attr_reader :head, :tail

  def initialize(beats)
    @head = beats
  end

  def all

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
    @result = @head
    position_counter = 0
    if position_counter = position
      grab_elements(@result, num_elements)
    else
      position_counter += 1
    end
  end

  def grab_elements(starting_node, num_elements)
    @elements = []
    num_elements.times do
      @elements << starting_node.link.data
      starting_node = starting_node.link
    end
    @elements.join(" ")
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
