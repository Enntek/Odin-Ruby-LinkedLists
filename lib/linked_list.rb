class LinkedList
  attr_reader :head

  def initialize
    @head = nil
    @tail = nil
  end

  def append(value = nil)
    # maybe create new methods for head/tail?
    if @tail.nil?
      @tail = Node.new(value)
    end

    new_node = Node.new(value)
    previous_tail = @tail
    previous_tail.next_node = new_node
    @tail = new_node

    
    if @head.nil?
      # is this a potential problem?
      @head = @tail
    end
  end

  def prepend(value)
    # add new node to start of list
  end

  def size
    # return total num of nodes
  end

  def head
    @head
  end

  def tail
    @tail
  end

  def at(index)
    # ret node at index
  end

  def pop
    # remove last el
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