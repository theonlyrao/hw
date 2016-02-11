require_relative 'node'
require 'pry'

class List

  attr_reader :head, :tail

  def initialize
    # @beats = beats
    # build_list
  end

  def build_list(beats)
    beat_splitter = beats.split()
    beat_count = beat_splitter.count

    @head = beat_splitter.each do |beat|
      beat_index = beat_splitter.index(beat)
      Node.new(beat_splitter[beat_index], Node.new(beat_splitter[beat_index + 1]))
    end
  end

  def tail_is
    current_node = @head
    until current_node.link.nil?
      current_node = current_node.link
    end
    @tail = current_node
  end


end
