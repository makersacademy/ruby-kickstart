# Write a method named every_other_char for strings that,
# returns a string containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
  	str = ''
  	each_char.with_index do |char, index|
  		str << char if index.even?
   	end
	str
  end
end





=begin
	variable = string.to_a
	variable2 = variable.values_at(* variable.each_index.select {|i| i.even?})
	end
end




=begin 
variable = string.split("")
		varible2 = variable.values_at(* variable.each_index.select {|i| i.even?})
		varible2.join
=end