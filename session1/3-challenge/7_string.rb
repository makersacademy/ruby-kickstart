# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
	new_str = ""
	add_next = false
	string.size.times do |index|
		current_char = string[index]
		new_str << current_char if add_next
		add_next = (current_char == "r" || current_char == "R")
	end
	new_str
end

