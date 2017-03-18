# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
	to_array = string.downcase.split("")
	new_arr = []
	count = 0
	to_array.length.times do
		if to_array[count] == "r"
			new_arr << to_array[count+1]
		end
	count += 1
	end
	new_arr.join
end
