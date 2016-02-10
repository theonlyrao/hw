require 'pry'

class Node

  attr_reader :data

  def initialize(data, link = nil)
    @data = data
    @link = link
  end

  def data
    @data
  end

  def link
    if @link.nil?
      nil
    else
      Node.new(@link)
    end
  end

end
