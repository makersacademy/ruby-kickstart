# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
	to_return = ""
	add_next = false
	string.size.times do |x|
		current = string[x]
		to_return << current if add_next
		add_next = (current == "r" || current == "R")
	end
	to_return
end
