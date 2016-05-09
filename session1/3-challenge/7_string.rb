# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
	new_results = ''
	string.each_char.with_index do |letter, index|
		break if index >= string.length - 1
		new_results << string[index + 1] if (letter == 'r' || letter == 'R')
	end
	new_results
end
