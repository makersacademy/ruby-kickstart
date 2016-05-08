# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
	string_to_return = ""
	terms = false
	string.size.times do |index|
		letter = string[index]
		string_to_return << letter if terms
		terms = (letter == "r" || letter == "R")
	end
	string_to_return
end
