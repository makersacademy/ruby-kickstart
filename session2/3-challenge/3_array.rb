# Write a method named every_other_char for strings that,
# returns an array containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
  	final_arr = ""
  	chars = self.split(//)
  	to_add = chars.select {|e, i| e, i.odd?}
  	final_arr << to_add
  end
  final_arr
end