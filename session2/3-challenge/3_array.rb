# Write a method named every_other_char for strings that,
# returns a string containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
    new_string = ''
    string = self.split(//)
    string.each_slice(2) { |a, b| new_string << a }
    new_string
  end
  
end
