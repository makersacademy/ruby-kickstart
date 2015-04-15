# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

#steps
	#get the index of all the r's in the string
	#return index + 1 to print letter that comes afterwards
		#potential alternative would be to use a next if e.g. print next character if you find an r (didn't work because always skipped)

	# a = (0 ... string.length).find_all { |i| string[i,1] == 'r' } #returns the index position of all r's, how now add the puts string[(i + 1)]
	# puts a

def pirates_say_arrrrrrrrr(string)
	after_r = ""
	add_after = false
	string.length.times do |index| #again, how does this index work
		current_char = string[index]
		after_r << current_char if add_after
		add_after = (current_char == "r" || current_char == "R")
	end
	return after_r
end

pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"