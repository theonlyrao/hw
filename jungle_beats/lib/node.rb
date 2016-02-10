require 'pry'

class Node

  attr_reader :data, :link

  def initialize(data, link = nil)
    @data = data
    @link = link
  end

  def data
    @data
  end

  def link
    @link
  end

end
