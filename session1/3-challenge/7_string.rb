# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

#might want to do recursion for this

def pirates_say_arrrrrrrrr(string)

	newstring = ""

	for i in 0..string.length 


		if (string[i] == 'r' || string[i] == 'R') && string[i+1] != nil
			newstring << string[i+1]
		end
	end

	return newstring

end

#pirates_say_arrrrrrrrr('test')
