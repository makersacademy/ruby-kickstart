# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
	to_return = ""
	index = 0
	string.split(//).each do |letter|
		if letter == "r" || letter == "R"
			to_return << string[index + 1].to_s
		end
		index += 1
	end
	to_return
end


