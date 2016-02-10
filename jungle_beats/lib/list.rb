require_relative 'node'
require 'pry'

class List

  attr_reader :string_of_data, :head, :tail

  def initialize(beats)
    @string_of_data = beats
    @head = Node.new(@string_of_data.split().first, Node.new("beep"))
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
    old_head = self.head
    @head = Node.new(beat, old_head)
  end

  def count
    #every time you open a node increment the count until you hit the tail
  end

  def head
    @head
  end

  def find_tail
    @tail = @head
    if @tail.link.nil?
      @tail
    else
      @tail = @tail.link
    end
    @tail
  end

end
