# When we say "abc".length, the length method
# is stored in the String class.
length = String.instance_method 'length'
length # => #<UnboundMethod: String#length>
# Unbounded because it isn't associated with a specific object
"abc".method 'length' # => #<Method: String#length> associated with "abc"

# So if we want to make a new method on strings,
# we would put it in the String class
class String
  def half_length
    length / 2
  end
end
"abcdef".half_length # => 3
