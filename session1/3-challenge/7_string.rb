# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
final = ""
c = 0

string.each_char do |x|
	if (string[c - 1] == "r" || string[c - 1] == "R") && c > 0
		final << x
	end
c += 1
end

return final

end

