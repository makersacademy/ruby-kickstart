# Write a method named every_other_char for strings that,
# returns a string containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
    returned = ''
    each_char.with_index do |char, index|
     returned << char if index.even?
    end
    returned
  end
end

