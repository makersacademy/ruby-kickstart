def pirates_say_arrrrrrrrr(string)
	string_array = string.split("")
	
	r_string = []
	
	string_array.each_with_index { |value, index| 
	  if value == "r" || value == "R"
	    r_string << string_array[index+1] end }
	r_string.join("")
end		
