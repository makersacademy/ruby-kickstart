# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
	result = ""
	0.upto(string.length - 2) do |i|
		c1 = string[i] 
		c2 = string [i+1]
		if (c1 == "r" || c1 == "R")
			result += c2  
		end
	end
	return result
end

