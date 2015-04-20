# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
	variable = ""
	add_next = false
	string.length.times do |index|
		current_char = string[index]
		variable << current_char if add_next
		add_next = (current_char == "r" || current_char == "R")
	end
	variable
end

