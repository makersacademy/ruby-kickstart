# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
	new_array = []
	array = string.split('')
	array.each_with_index { |letter, index_number|
		if letter == "r" || letter == "R"
			new_array << array[index_number+1]
		end
	}
	return new_array.join
end
