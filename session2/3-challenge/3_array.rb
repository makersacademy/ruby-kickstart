# Write a method named every_other_char for strings that,
# returns a string containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
  string_array = self.chars.to_a

x = 0
output = ""
while x < string_array.size

if (x % 2 == 0)
	output << string_array[x]
  end
  x += 1
end
  return output
end
end



