# Write a method named every_other_char for strings that,
# returns a string containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
  	array = []
  	self.scan(/.?/).each_with_index { |value, index| array << value if index.even? }

  	array.join
  end
end
