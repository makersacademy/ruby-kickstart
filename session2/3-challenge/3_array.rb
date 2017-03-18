# Write a method named every_other_char for strings that,
# returns a string containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
    to_return = ''                         # each_char passes each char in str to the given block,
    each_char.with_index do |char, index|  # with_index iterates the given block for each element with an index
      to_return << char if index.even?     # append char with even index - 0, 2, 4...
    end
    to_return                              # call the var, otherwise it will just return the given string, with no changes
  end
  # puts "abcde".every_other_char          # test
end
