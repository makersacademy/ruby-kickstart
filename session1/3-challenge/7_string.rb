# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
	piratespeak = ""
	string.split("").each_with_index {|v, i| piratespeak << string[i+1] if  i+1 < string.size && v == "r" || v == "R" }			
	return piratespeak
end



