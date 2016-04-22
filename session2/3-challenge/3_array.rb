# Write a method named every_other_char for strings that,
# returns a string containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""



class String
  def every_other_char
    return_str = ''
	each_char.with_index do | char, i|
	return_str << char if !i.odd?
	end
    return_str
  end
end


