# given a string, return the character after every letter "r"
# 
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
	solution = []
	ary = string.split(//)
	ary.each_with_index do |char, ind|
		solution << ary[ind + 1] if (char == "r" || char == "R")
	end
	solution.join()
end
