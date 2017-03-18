# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
	pirate = ''
	r = false
	string.size.times do |i|
		cl = string[i,1]
		pirate << cl if r 
		r = (cl == "r" || cl == "R")
	end
	pirate
end
