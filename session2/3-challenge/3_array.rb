# Write a method named every_other_char for strings that,
# returns an array containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
  	return_value = ''
  	size.times {|index| return_value << self[index] if index.even?}
  	return_value
  end
end

