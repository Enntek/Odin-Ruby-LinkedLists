# This class is a data structure similar to an array

class LinkedList
  attr_reader :head, :tail

  def initialize
    @head = nil
    @tail = nil
  end

  def append(value = nil)
    return begin_list(value) if head.nil?

    @tail.next_node = Node.new(value)
    @tail = @tail.next_node # new tail = old tail .next_node
  end

  def prepend(value)
    return begin_list(value) if head.nil?

    new_head = Node.new(value, @head)
    @head = new_head
  end

  def size
    return 1 if @head.next_node.nil?

    current_node = @head
    i = 1
    loop do
      current_node = current_node.next_node
      i += 1
      return i if current_node.next_node == nil
    end
  end

  def at(index)
    current_node = @head
    index.times do
      current_node = current_node.next_node
    end
    current_node
  end

  def pop
    old_tail = @tail

    return puts 'Linked List is empty' if @head.nil?

    if @head.next_node.nil?
      @head = nil
      @tail = nil
      return old_tail
    end

    @tail = get_penultimate_node
    @tail.next_node = nil
    old_tail
  end

  def contains?(value)
    size.times do |i|
      return true if at(i).value == value
    end
    false
  end

  def find(value)
    # ret index of node containing value, or nil
    size.times do |i|
      return i if at(i).value == value
    end
    nil
  end

  def to_s
    # represent linked list objects as strings
    # format should be:  ( value ) -> ( value ) -> ( value ) -> nil
  end

  def get_penultimate_node(current_node = @head)
    next_node = current_node.next_node
    return current_node if next_node.next_node.nil?

    get_penultimate_node(next_node)
  end

  def begin_list(value)
    @head = Node.new(value)
    @tail = @head
  end

  # extra credit
  def insert_at(value, index)
    # insert node with value at index
  end

  def remove_at(index)
  end
end