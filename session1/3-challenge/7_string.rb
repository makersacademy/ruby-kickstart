# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
	result = ""
	after_r = false
	string.each_char do |x|
		result << string[x] if after_r
		after_r = false
		if string[x] == "r" || string[x] == "R"
			after_r = true
		end
	end
	return result
end