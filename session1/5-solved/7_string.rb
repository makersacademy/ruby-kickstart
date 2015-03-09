# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)

	string_array = string.split(//)
	new_string_array = []

	string_array.each_with_index do |char, index|
		new_string_array << string_array[index + 1] if char.downcase == "r"
	end

	new_string_array.join

end

