# Write a method named every_other_char for strings that,
# returns a string containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  
  def every_other_char

  	new_array = self.split("")

  	new_array_2 = []

  	new_array.each_index {|x| new_array_2 << new_array[x] if x.even?}

  	new_array_2.join("")


  end

end

