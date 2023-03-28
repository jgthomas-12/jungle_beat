class Node
  attr_reader :data, :next_node
  # attr_accessor :next_node
  def initialize(data)
    @data = data
    @next_node = nil
  end

  def next_node=(node)
    @next_node = node
  end

  def data=(dat1)
    @data = dat1
  end
  
end