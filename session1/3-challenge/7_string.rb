# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
	return_str = ""
	index = 0
	str_arr = string.split("")
	str_arr.each do |item|
		return_str += str_arr[index + 1] if item.downcase == "r" && index < string.size - 1
		index += 1
		end

	return_str 

end
