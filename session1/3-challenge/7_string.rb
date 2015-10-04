# given a string, return the character after every letter "r"
# 
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
	new_string = ""
	string = string.downcase.split("")
	length = string.length
	string.each_index { |i|
		if string[i] == "r" && i < (length - 1)
			new_string << string[i+1]
		end
	}
	return new_string
end
#p pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
#p pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
p pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")   