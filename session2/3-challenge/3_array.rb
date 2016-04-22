# Write a method named every_other_char for strings that,
# returns a string containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
  	results =[]
  	 array = self.split('')
  	 array.each_slice(2) { |a, b| results << [a]}
  	 return results.join

  end

end

"eduardo".every_other_char


