require_relative 'node'
require 'pry'

class List

  attr_reader :string_of_data, :head, :tail

  def initialize(beats)
    @string_of_data = beats
  end

  def string_of_data_to_nodes
  end

  def append(data)
  end

  def find(position, elements)
    current_position = 0
    start = self.head.link
    current_position = 1
    first = start.link
    current_position = 2
    second = first.link

    second.data + second.link.data + second.link.link.data
  end

  def count
  end

  def head
    data_array = @string_of_data.split()
    head = data_array.first
    if data_array.count > 1
      Node.new(head, data_array[1])
    else
      Node.new(head)
    end
  end

  def tail
    tail = @string_of_data.split().last
    Node.new(tail)
  end

end
