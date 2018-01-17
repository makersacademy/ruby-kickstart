# If you struggle on this question for ~30 minutes and aren't getting anywhere, look at the solutions file, try to understand the code, then close the file, come back here, and try again to solve it.

# Require the stack code from challenge 1
# The code you added causes it to do this
#
# stack = Stack.new
# stack.push 1
# stack.push 2
# stack # => (2)1)


# But sometimes you want it to inspect like an array.
# stack # => [1, 2]
#
# Subclass the Stack class and override its inspect
# so that we can do this:
#
# stack = StackInDisguise.new
# stack.push 1
# stack.push 2
# stack # => [1, 2]

require File.expand_path("../../3-challenge/1_stack_classes_inspect.rb",__FILE__)

class StackInDisguise < Stack
	def inspect
		to_return = []
		node = @head
		while node
			to_return << node.data
			node = node.next_node
		end
		to_return.reverse.inspect
	end
end