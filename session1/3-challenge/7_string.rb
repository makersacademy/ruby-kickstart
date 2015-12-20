# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
	#string_array = string.split("")
	#string_array.each { |string| "r" +1}
	#puts string_array 

	string_array = string.split("")
	new_array = []
	string_array.each_index do |x| 
		unless x - 1 < 0
		if string_array.fetch(x - 1) == 'r'
			new_array << string_array.fetch(x) 
		elsif string_array.fetch(x - 1) == 'R' 
			new_array << string_array.fetch(x) 
		end
	end
	end
	new_array.join
end
puts pirates_say_arrrrrrrrr 'are you really learning Ruby?'