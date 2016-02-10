require 'pry'

class Node

  attr_reader :data

  def initialize(data, link = nil)
    @data = data
  end

  def data
    @data
  end

  def link
    Node.new(self, nil)
  end

end
