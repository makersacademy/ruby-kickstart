# Write a method named every_other_char for strings that,
# returns a string containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char

new = ''

  each_char.with_index {|letter, position| new << letter if position.even? }

new
  end

end



p "abcdefg".every_other_char  # => "aceg"
p "".every_other_char         # => ""
