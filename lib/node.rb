class Node
  attr_accessor :next_node

  def initialize(value = nil)
    @value = value
    @next_node = nil
  end

  def value
    @value
  end
end