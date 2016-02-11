require_relative 'node'
require_relative 'jungle_beat'
require 'pry'

class LinkedList

  attr_accessor :head, :beats

  def initialize(passed_from_jb)
    @beats = passed_from_jb.to_s
    split = @beats.split()
    count = split.count

    @head = Node.new(nil, nil)
    n = 0

    while n <= count do
      @head.data = split[count - n].to_s
      @head.link = Node.new(@head)
      n += 1
      if n == count
        @head.link = nil
      end
    end
  end

end
