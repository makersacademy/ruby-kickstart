# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
	array = string.split("")
	i = 0
	word = ""
	for e in array
		if e.downcase == "r"
			word += array[i+1].to_s
			i += 1
		else
			i += 1
		end
	end
	word
end
