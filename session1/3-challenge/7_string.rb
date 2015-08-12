# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
	array = string.split(//)
	toReturn = []
	for i in 0..(string.length)
		toReturn.push(array[i+1]) if array[i] == "r" or array[i] == "R"
	end
	newString = toReturn.join()
	puts newString
end
