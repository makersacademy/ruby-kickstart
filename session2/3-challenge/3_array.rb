# Write a method named every_other_char for strings that,
# returns an array containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  	def every_other_char
  		string = ""
  		array = self.split("")
  		array1 = array.select.each_with_index {|str, i| i.even?}
  		string = array1.join
#  		array.length.times do |i|
#  			num = 0
#  			if !num.even?
#  			num += 1 next if !num.even?
#  			array1 << in
#		end
	end  
end
