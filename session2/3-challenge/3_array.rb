# Write a method named every_other_char for strings that,
# returns a string containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
	arr = []
	split(//).each.with_index{|char,index| arr.push(char) if index.even?}
	arr.join
  end
  
end
