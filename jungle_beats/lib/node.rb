class Node

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

  def string_of_data_to_nodes
    string_split = string_of_data_to_nodes.split()
    n = string_split.count
    n.times do
      @data = string_split.pop
      if n == 1
        @link = nil
      else
        @link = string_split[n - 1]
      end
      return (@data, @link)
    end
  end
  
end
