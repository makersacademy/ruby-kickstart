# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
	new_string = ''
	
	string.size.times do |x|
		
		if string[x].downcase == 'r' && string[x +1] != nil
			new_string +=  string[x + 1] 
		end
		
	end
	new_string

end
