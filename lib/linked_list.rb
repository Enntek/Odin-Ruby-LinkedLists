# This class is a data structure similar to an array
class LinkedList
  attr_reader :head

  def initialize
    @head = nil
    @tail = nil
    @sum_nodes = 0
  end

  def append(value = nil)
    old_tail = @tail
    new_tail_node = Node.new(value)
    old_tail.next_node = new_tail_node unless old_tail.nil?
    @tail = new_tail_node

    if @head.nil?
      @head = @tail
    end
    @sum_nodes += 1
  end

  # def append(value)
  #   return begin_list(value) if head.nil?

  #   tail.next_node = create_node(value)
  # end


  def prepend(value)
    old_head = @head
    new_head = Node.new(value)
    new_head.next_node = old_head
    @head = new_head
    @sum_nodes += 1
  end

  def size
    @sum_nodes
  end

  def head
    @head
  end

  def tail
    @tail
  end

  def at(index, obj = nil)
    return @head if index == 0
    return recursive_next(@head.next_node, index)
  end

  # returns node/object
  def recursive_next(obj, index, i = 1)
    if index == i
      return obj
    else
      recursive_next(obj.next_node, index, i += 1)
    end
  end

  # def at(index)
  #   current_node = @head
  #   index.times do
  #     current_node = current_node.next_node
  #   end
  #   current_node
  # end



  def pop
    # remove last el
    # 
    # you need to use recursion + size to find penultimate node
    # set next_node = nil
    # return object
  end

  def contains?(value)
    # boolean
  end

  def find(value)
    # ret index of node containing value, or nil
  end

  def to_s
    # represent linked list objects as strings
    # format should be:  ( value ) -> ( value ) -> ( value ) -> nil
  end

  # extra credit
  def insert_at(value, index)
    # insert node with value at index
  end

  def remove_at(index)
  end
end