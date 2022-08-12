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
    return puts 'Linked List is empty' if @head.nil?

    old_tail = @tail
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
    size.times do |i|
      return i if at(i).value == value
    end
    nil
  end

  def to_s
    str = ''
    size.times do |i|
      str += "( #{at(i).value} ) -> "
      str += 'nil' if at(i).next_node.nil?
    end
    str
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
  def insert_at(index, value)
    return begin_list(value) if @head.nil?
    return @head = Node.new(value, at(index)) if index.zero?
    return append(value) if index == size
    return puts 'Unable to insert, index out of range!' if index > size

    new_node = Node.new(value, at(index))
    at(index - 1).next_node = new_node
  end

  def remove_at(index)
    return pop if index == size - 1

    # edge case: head
    if index == 0
      old_head = @head
      @head = @head.next_node
      old_head.next_node = nil
      return old_head
    end

    # not head and not tail
    old_node = at(index)
    prev_node = at(index - 1)
    prev_node.next_node = at(index + 1)
    old_node
  end
end