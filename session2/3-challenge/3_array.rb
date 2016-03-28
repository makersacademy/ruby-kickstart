# Write a method named every_other_char for strings that,
# returns an array containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char	
  	answer = ''																				# Start with an empty array
  	arr = self.split(//)																				
  	arr.each_index {|x| answer << arr[x] if x.even?}	# Append each character to the array if it has an even index
  	answer																						# Return the array
  end
end