#final solution

# Write a method named every_other_char for strings that,
# returns an array containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
  	array=chars.to_a
  	array.select.each_with_index { |_, i| i.even? }.join
  end

end

