# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
	string_returned = ""
	string.size.times do |index|
		if (string[index] == "r" || string[index] == "R") && string[index+1] != nil
			string_returned << string[index+1]
			end
		end
string_returned
end
