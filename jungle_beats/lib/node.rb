require 'pry'

class Node

  attr_accessor :data, :link

  def initialize(data, link = nil)
    @data = data
    @link = link
  end
  
end
