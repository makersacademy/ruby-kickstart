# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
	
	c = string.downcase.chars
	size = c.length
	result = []
	(0..size-1).each do |i|
		if (c[i] == "r")
			if (i < size - 1)
				result.push(c[i + 1])
			end
		end
	end
	return result.join("")
	
end
