# Odin Ruby Project: Linked Lists
# https://www.theodinproject.com/lessons/ruby-linked-lists

require_relative 'linked_list'
require_relative 'node'
require 'pry-byebug'
# binding.pry

# look at next_node for head, tail, and penultimate node

a_list = LinkedList.new
a_list.append('1st_data')
a_list.append('2nd_data')
a_list.append('3rd_data')
a_list.prepend('prepend_data')
a_list.append(4000)

# p a_list.size
# p a_list.at(0)
# p a_list.pop
# p a_list.tail
# p a_list.contains?('not data')
# p a_list.find('prepend_data')
# a_list.insert_at(0, 'more_data')
# a_list.insert_at(6, 'more_data')
# a_list.append('more_data')
# p a_list.to_s
# p ['head', a_list.head]
# p ['tail', a_list.tail]
# p a_list.remove_at(3)
# p a_list.to_s