# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)

	new_string = ""
	x = 0
	while x < string.length
	    
		if string[x] == "r" || string[x] == "R"
		    
			new_string << string[x+1].to_s
		end
		x += 1
	end
	
	new_string

end