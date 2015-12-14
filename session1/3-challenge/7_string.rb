# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
	newArray = string.split ""
	newString = ""
	i = 0
	while i < (string.length - 1)
		newString += newArray[i + 1] if newArray[i] == "r" || newArray[i] == "R"
		i += 1
	end
	return newString
end
