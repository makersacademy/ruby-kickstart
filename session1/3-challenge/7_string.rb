# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
	newstr = ""
	length = string.length - 1
	length.times do |x|
		if string[x] == "r" || string[x] == "R"
			pos = x + 1
			newstr << string[pos]
		end
	end
	newstr
end