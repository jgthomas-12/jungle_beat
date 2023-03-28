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
  #establishes as a variable that can be edited...need to understand the setter method thing. Maybe it needs to be a different variable name to make it super obvious and unable to be mixed up?
  
end