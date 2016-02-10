require_relative 'node'
require 'pry'

class List

  attr_reader :string_of_data, :head, :tail

  def initialize(string)
    @string_of_data = string
  end

  def string_of_data_to_nodes
    input = string_of_data.split()
    max_counter = input.count
    counter = 0
    while counter < max_counter
      input.each do |word|
        Node.new(word, input[counter + 1])
        counter += 1
      end
    Node.new(input[-1], nil)
    end
  end

  def append(data)
  end

  def find(data)
  end

  def count
  end

  def head
    split_arg = @string_of_data.split()
    @head = Node.new(split_arg[0], Node.new(split_arg[1]))
  end

  def tail
    @current_node = self.head
    binding.pry
    until @current_node.link.nil?
      @current_node = @current_node.link
    end
    @current_node
  end

end
