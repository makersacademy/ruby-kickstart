# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
	pirates_say = ""
	string.split(//).each_index do |i|
		pirates_say << string[i+1] if string[i].downcase == "r" && string[i+1] != nil	
	end
	pirates_say


end



