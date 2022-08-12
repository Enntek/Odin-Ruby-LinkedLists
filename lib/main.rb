# Odin Ruby Project: Linked Lists
# https://www.theodinproject.com/lessons/ruby-linked-lists

# when we instantiate a list, we should instantiate a single node, value=nil and next_node=nil
# the next method will sent @next_node to next node object

# when we instantiate a list, what happens?
# the linked list is created, what's initialized?
# @head = nil, @tail = nil,

require_relative 'linked_list'
require_relative 'node'
require 'pry-byebug'
# binding.pry

# look at next_node for head, tail, and penultimate node

a_list = LinkedList.new
a_list.append('1st_data')
a_list.append('2nd_data')
a_list.append('3rd_data')
a_list.append('4rd_data')
a_list.prepend('prepend_data')

# p ['head', a_list.head]
# p ['tail', a_list.tail]
# p a_list.size
# p a_list.at(0)
# p a_list.pop
# p a_list.tail
p a_list.contains?('not data')
