# If you struggle on this question for ~30 minutes and aren't getting anywhere, look at the solutions file, try to understand the code, then close the file, come back here, and try again to solve it.

# Require the stack code from challenge 1
# The code you added causes it to do this
#
# stack = Stack.new
# stack.push 1
# stack.push 2
# stack # => (2)1)

# load the stack code in
#puts "This script is located in #{File.dirname __FILE__}"

#require File.dirname(__FILE__) + '/session4/3-challenge/1_stack_classes_inspect'

#require File.dirname(__FILE__) + "/1_stack_classes_inspect"
#require File.dirname(__FILE__) + "../5-solved/1"

#require File.expand_path("/home/nitrous/Projects/ruby-kickstart/session4/3-challenge/1_stack_classes_inspect", __FILE__)


# But sometimes you want it to inspect like an array.
# stack # => [1, 2]
#
# Subclass the Stack class and override its inspect
# so that we can do this:

class StackInDisguise < Stack
  def inspect
    current   = @head
    to_return = []
    while current
      to_return << current.data
      current = current.next_node
    end
    to_return.reverse.inspect
  end
end

#
# stack = StackInDisguise.new
# stack.push 1
# stack.push 2
# stack # => [1, 2]

