# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
	returns = []
	#makes an empty string for returned letters
	letters = string.split''
	#splits the given string into an array
	letters.each_with_index do |l, i|
		if (l == 'r' || l == 'R')
			next_letter = letters[i+1]
			returns << next_letter
		end
	end
	output = returns.join('')
	return output
end

pirates_say_arrrrrrrrr("are you really learning Ruby?")
pirates_say_arrrrrrrrr("Katy Perry is on the radio!")
pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr") 
