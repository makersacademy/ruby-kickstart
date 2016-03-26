# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
	# Declare variables
	final_string = ""
	next_letter = false
	iterator = string.length

	# Iterate over the string to find letters trailing 'r' or 'R'
	iterator.times do |i|
		char = string[i]
		final_string << char if next_letter 
		next_letter = (char == 'R' || char == 'r')
	end
	final_string
end
