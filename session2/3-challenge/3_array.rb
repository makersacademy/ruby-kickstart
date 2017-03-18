# Write a method named every_other_char for strings that,
# returns a string containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
    to_return = ''
    each_char.with_index do |char, index|
      to_return << char if index.even?
    end
    to_return
  end

end

=begin
Line 11 each_char refers to the string the method will work on
with_index returns the value and the index from an array
do is then assigning the value as char and the index as index (that' the order)
with_index throws them out.
Line 12 then assigns << the value (char) to to_return if the index of the value is even
=end
