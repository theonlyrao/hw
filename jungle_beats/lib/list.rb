require_relative 'node'
require 'pry'

class List

  attr_reader :string_of_data, :head, :tail, :new_head, :new_tail

  def initialize(beats)
    @head = beats
  end

  def all
    
  end

  def append(data)
    #get to the tail
    #switch the link in the tail from nil to Node.new(data)
    @new_tail = @head
    unless @new_tail.link.nil?
      @new_tail = @head.link
    end
    @new_tail = Node.new(data)
  end

  def find(position, elements)
    #get to the right position
    #find its data and then the next elements
  end

  def prepend(beat)
    @old_head = @head
    @new_head = Node.new(beat, @old_head)
  end

  def count
    #every time you open a node increment the count until you hit the tail
  end

  def find_tail
  end

end
