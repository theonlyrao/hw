require_relative 'node'
require_relative 'jungle_beat'
require 'pry'

class LinkedList

  attr_accessor :head, :beats

  def initialize(passed_from_jb)
    # @head = nil
    @beats = passed_from_jb.to_s
    split = @beats.split()
    count = split.count

    @head = Node.new(nil, nil)
    n = 1

    # while n <= count do
    #   @new_head.data = split[count - n].to_s
    #   @new_head.link = Node.new(@head)
    #   n += 1
    #   if n == count
    #     @head.link = nil
    #   end
    #   @head = Node.new(@new_head.data, @new_head.link)
    # end

    while n <= count do
      @head.data = split[count - n].to_s
      @head.link = Node.new(@head)
      n += 1
      if n == count
        @head.link = nil
      end
      @head = Node.new(@head.data, @head.link)
    end
  end

  # def push(beat)
  #   if @head.nil?
  #     @head = Node.new(beat)
  #   else

end
