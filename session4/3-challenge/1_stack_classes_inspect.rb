# If you struggle on this question for ~30 minutes and aren't getting anywhere, look at the solutions file, try to understand the code, then close the file, come back here, and try again to solve it.

# A stack is a collection of objects, where when you add a new object to the collection,
# called "pushing", it becomes the first object that you remove from the collection,
# called "popping". Arrays can be used as stacks:
# stack = Array.new
# stack.push 1
# stack.push 2
# stack       # => [1, 2]
# stack.pop   # => 2
# stack.pop   # => 1
# stack.pop   # => nil



# But I want to implement it using linked lists instead of arrays.
class Node
  attr_accessor :next_node, :data

  def initialize(next_node, data)
    @next_node = next_node
    @data = data
  end
end


class Stack
  def initialize
    @head = nil
  end

  def push(data)
    @head = Node.new @head, data
  end

  def pop
    to_return = @head && @head.data
    @head &&= @head.next_node
    to_return
  end
end
# stack = Stack.new
# stack.push 1
# stack.push 2
# stack         # => #<Stack:0x007f84db1923c0 @head=#<Node:0x007f84db192370 @next_node=#<Node:0x007f84db192398 @next_node=nil, @data=1>, @data=2>>
# stack.pop     # => 2
# stack.pop     # => 1
# stack.pop     # => nil


# Looks good, except that inspection is uuuuuugly. It's the default
# inspect method from Kernel, which knows nothing about our lists.
#
# I want you to override it so that I can do this:
# stack = Stack.new
# stack.push 1
# stack.push 2
# stack.push 3
# stack # => #<Stack:0x007f84db18b840 @head=#<Node:0x007f84db18b7c8 @next_node=#<Node:0x007f84db18b7f0 @next_node=#<Node:0x007f84db18b818 @next_node=nil, @data=1>, @data=2>, @data=3>>

# @head=#<  Node:0x007fd9c29ca8f8
    # @next_node  =#<Node:0x007fd9c29ca920 @next_node=#<Node:0x007fd9c29ca948 @next_node=nil,
    #             @data=1>, @data=2>,
    # @data=3>

# @next_node=#< Node:0x007fd9c29ca920
    # @next_node  =#<Node:0x007fd9c29ca948 @next_node=nil, @data=1>,
    # @data=2>

# @next_node=#< Node:0x007fd9c29ca948
    # @next_node  =nil,
    # @data=1 >



### USER SOLUTION
# (3)2)1)

class Stack
  def inspect
    return '()' unless @head
    str = '('
    node = @head
    loop do
      str += "#{node.data.inspect})"
      return str unless node.next_node
      node = node.next_node
    end
  end
end

# stack = Stack.new
# stack.push 1
# stack.push 2
# stack.push 3
# stack # => (3)2)1)

# stack2 = Stack.new
# stack2 # => ()

