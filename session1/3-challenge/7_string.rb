# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
	new_string = ""
	i = 0
	string.each_char do |a|
		if a.downcase == "r" && string[i+1]
			new_string << string[i+1]
		end
		i += 1
	end
	new_string
end

p pirates_say_arrrrrrrrr("Katy Perry is on the radio!")
p pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")
