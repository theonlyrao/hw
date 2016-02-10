require_relative 'node'
require 'pry'

class List

  attr_reader :string_of_data, :head, :tail

  def initialize(beats)
    @string_of_data = beats
    @head = Node.new(@string_of_data.split().first, Node.new(@string_of_data.split()[1..-1]))
  end

  def all
    @new_beats
  end

  def append(data)
    #get to the tail
    #switch the link in the tail from nil to Node.new(data)
  end

  def find(position, elements)
    #get to the right position
    #find its data and then the next elements
  end

  def prepend(beat)
    old_head = @head
    @head = Node.new(beat, old_head)
    @new_beats = [@head].flatten
  end

  def count
    #every time you open a node increment the count until you hit the tail
  end

  def head
    @head
  end

  def find_tail
    current_node = self.head
    until current_node.link.nil?
      current_node = current_node.link
    end
    current_node
  end

end
