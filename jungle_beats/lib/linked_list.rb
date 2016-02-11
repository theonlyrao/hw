require_relative 'node'
require_relative 'jungle_beat'
require 'pry'

class LinkedList

  attr_accessor :head, :beats

  def initialize(beats)
    @beats = beats
  end
  binding.pry
  split = @beats.split()
  count = split.count

  @head = Node.new

  counter = 0
  @head.data = split.first
  while counter < count
    @old_data
    @head.link = Node.new(@head.link, )

end
