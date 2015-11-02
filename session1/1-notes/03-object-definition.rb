# Ruby organizes related data, and the ways of manipulating it, into an abstract idea called an object.
# For example, the data that defines a number, and the methods on that number, define that number object.

# An object is a set of data on the computer, and a set of instructions to manipulate that data.

# At a computer level, the data for the number 5 are just ones and zeros, probably looking like this
"%032b" % 5 # => "00000000000000000000000000000101"

# and since five is an object, it also has methods on it
5.even? # => false
# even is a set of instructions thats how to evaulate the number 5 to see if it is even or not.
5.odd?  # => true
5.next  # => 6
# next is a set of instructions that knows how to take an integer and + 1 to it...
