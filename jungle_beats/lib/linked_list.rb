require_relative 'node'
require_relative 'jungle_beat'
require 'pry'

class LinkedList

  attr_accessor :head, :beats

  def initialize
    @head = nil
  end

  def push(beat)
    if @head.nil?
      @head = Node.new(beat)
    else
      @old_head = @head
      @head = Node.new(beat, @old_head)
    end
  end

end
