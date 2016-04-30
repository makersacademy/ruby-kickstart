# Write a method named every_other_char for strings that,
# returns a string containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
    new_str = []
    self.split(//).each_with_index { |a, i| new_str << a  if i % 2 == 0}
    new_str.join 
  end
end
