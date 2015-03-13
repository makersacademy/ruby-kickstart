# Write a method named every_other_char for strings that,
# returns an array containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

# We're creating a method for strings, so let's store it in the string class
class String
  def every_other_char
    # We're going to need to return a string, so let's create an empty one
    to_return = ''
    # each_char will pass each character into the block
    # with_index iterates the block for each element with an index
    each_char.with_index do |char, index|
      # If the character at the current index is even (i.e 0, 2, 4..), add it to the empty string
      to_return << char if index.even?
    end
    # Return the string
    to_return
  end
end

=begin Without comments:

class String

  def every_other_char
    to_return = ''
    each_char.with_index do |char, index|
      to_return << char if index.even?
    end
    to_return
  end

end

=end
