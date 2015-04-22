# Write a method named every_other_char for strings that,
# returns an array containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
<<<<<<< HEAD
  	out = ""
  	each_char.each_with_index.select do |c,i|
  	  if i.even? 
  	    out << c #adds the 
  	  end
    end
    puts out #outputs the resulting array with every other character
  end
end


"abcdefg".every_other_char
"".every_other_char
"Haeblcldoe ftghheirjek!l".every_other_char




=======
  end
  
end
>>>>>>> c6e3db68b1696c9b1ce9890d9a36cc8d971f72ab

