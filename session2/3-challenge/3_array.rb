# Write a method named every_other_char for strings that,
# returns an array containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
  	array = self.split(//)
  	toReturn = []
  	for i in 0..(self.length)
		toReturn.push(array[i])if i % 2 == 0
  	end
	newString = toReturn.join()
	puts newString
  end
  
end
