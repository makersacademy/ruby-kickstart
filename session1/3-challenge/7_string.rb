# given a string, return the character after every letter "r"
# 
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"
def pirates_say_arrrrrrrrr(string)
	final_string = ''
	string.length.times do |i|
		current_cha = string[i]
		final_string << string[i+1] if (current_cha == "r" || current_cha == "R")
end 
	final_string
end 

puts pirates_say_arrrrrrrrr("Adrian is really ready for Makers")
