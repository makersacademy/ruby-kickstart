# Write a method named every_other_char for strings that,
# returns a string containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""


class String
	def every_other_char
		array = ""
		each_char.with_index do |item, index|
  	 		array << item if index.even?
  	 	end
  	 return array
  	end
end

"abcdefg".every_other_char
"".every_other_char


#ORIGINAL MVP...
# class Test
#   def every_other_char_two(string) #don't have to store a parameter because stored in the String class?
#   	 array = string.split('')
#   	 puts array
#   	 array2 = []
#   	 array.each_with_index do |item, index|
#   	 	if index % 2 == 0 then
#   	 		array2.push(item)
#   	 	end
#   	 end
#   	 puts array2
#   end
# end

# test = Test.new
# test.every_other_char_two("abcdefg")

#steps
	# without a parameter what existing method may you have to use to get working?
	# turn a string into an array >> split, map?
	# iterate over the array with criteria that only takes every 2nd element e.g. [0],[2],[4]
	# ensure that returns a variable which can put out this new string in a constant form


